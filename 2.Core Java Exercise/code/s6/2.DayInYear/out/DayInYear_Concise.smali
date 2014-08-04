.class public LDayInYear;
.super Ljava/lang/Object;
.source "DayInYear.java"


# static fields
.field static day:I

.field static month:I

.field static year:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDay()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xb

    new-array v2, v0, [I

    fill-array-data v2, :array_32

    const/4 v0, 0x1

    :goto_9
    sget v3, LDayInYear;->month:I

    if-ge v0, v3, :cond_15

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    sget v0, LDayInYear;->day:I

    add-int/2addr v0, v1

    sget v1, LDayInYear;->year:I

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_24

    sget v1, LDayInYear;->year:I

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_2a

    :cond_24
    sget v1, LDayInYear;->year:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_31

    :cond_2a
    sget v1, LDayInYear;->month:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_31

    add-int/lit8 v0, v0, 0x1

    :cond_31
    return v0

    :array_32
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
    .end array-data
.end method

.method public static checkDate()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, LDayInYear;->day:I

    if-ge v0, v2, :cond_2d

    move v0, v1

    :goto_7
    if-nez v0, :cond_2c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "%d, %d, %d: Date input error.\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, LDayInYear;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    sget v1, LDayInYear;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    sget v2, LDayInYear;->day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2c
    return v0

    :cond_2d
    sget v0, LDayInYear;->month:I

    packed-switch v0, :pswitch_data_68

    move v0, v1

    goto :goto_7

    :pswitch_34
    sget v0, LDayInYear;->day:I

    const/16 v3, 0x1f

    if-le v0, v3, :cond_66

    move v0, v1

    goto :goto_7

    :pswitch_3c
    sget v0, LDayInYear;->day:I

    const/16 v3, 0x1e

    if-le v0, v3, :cond_66

    move v0, v1

    goto :goto_7

    :pswitch_44
    sget v0, LDayInYear;->year:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_50

    sget v0, LDayInYear;->year:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_56

    :cond_50
    sget v0, LDayInYear;->year:I

    rem-int/lit16 v0, v0, 0x190

    if-nez v0, :cond_5e

    :cond_56
    sget v0, LDayInYear;->day:I

    const/16 v3, 0x1d

    if-le v0, v3, :cond_66

    move v0, v1

    goto :goto_7

    :cond_5e
    sget v0, LDayInYear;->day:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_66

    move v0, v1

    goto :goto_7

    :cond_66
    move v0, v2

    goto :goto_7

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_34
        :pswitch_44
        :pswitch_34
        :pswitch_3c
        :pswitch_34
        :pswitch_3c
        :pswitch_34
        :pswitch_34
        :pswitch_3c
        :pswitch_34
        :pswitch_3c
        :pswitch_34
    .end packed-switch
.end method

.method public static getDate()V
    .registers 2

    .prologue
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Input the Date with the format (year month day)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    sput v1, LDayInYear;->year:I

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    sput v1, LDayInYear;->month:I

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    sput v0, LDayInYear;->day:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    invoke-static {}, LDayInYear;->getDate()V

    invoke-static {}, LDayInYear;->checkDate()Z

    move-result v0

    if-ne v0, v5, :cond_42

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%d, %d, %d: It is the %d day within year %d.\n"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, LDayInYear;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    sget v3, LDayInYear;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget v4, LDayInYear;->day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, LDayInYear;->calculateDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget v4, LDayInYear;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_42
    return-void
.end method

.method public static setDate(III)V
    .registers 3

    .prologue
    sput p0, LDayInYear;->year:I

    sput p1, LDayInYear;->month:I

    sput p2, LDayInYear;->day:I

    return-void
.end method
