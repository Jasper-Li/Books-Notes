#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
	XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h
{
	width = w;
	height = h;
}

-(void) setOrigin: (XYPoint *) pt
{
	if(! origin)
		origin = [[XYPoint alloc] init];

	origin.x = pt.x;
	origin.y = pt.y;
}

-(int) area
{
	return width * height;
}

-(int) perimeter
{
	return (width + height) * 2;
}

-(XYPoint *) origin
{
	return origin;
}

-(void ) getRectangle
{
	XYPoint *myPoint = [[XYPoint alloc] init];
	int x,y, w, h;

//	NSLog(@"type the original point: X,Y");
//	scanf("%i,%i", &x, &y);
	[myPoint setX: x andY: y];

	NSLog(@"type the width and height: Weight,Height");
	scanf("%i,%i", &w, &h);
	[self setWidth: w andHeight: h];
	self.origin = myPoint;

}
-(void) printRectInfo 
{
	NSLog (@"Rectagnle information.");
	NSLog (@"Origin at (%i, %i)", self.origin.x, self.origin.y);
	NSLog (@"Rectangle widith = %i, height = %i\n\n", self.width, self.height);
}

-(void) drawRect
{
	char background[] = "、";
	char color [] = "-";//"——";

	int i,j;
	printf("draw Rect start.\n");

	for(i=0; i<width; i++)
		printf("%s", color);
	printf("\n");

	for(i=0;i<height ; i++)
	{
		printf("|");
		for (j=0;j<width-2;j++)
			printf(".");
		printf("|\n");
	}
	for(i=0; i<width; i++)
		printf("%s", color);
	printf("\n");

}

-( Rectangle *) compare: (Rectangle*)f
{
	XYPoint *overLapOrigin = [[XYPoint alloc] init];
	Rectangle *overLapRect = [[Rectangle alloc] init];

	int A=self.origin.x; 
	int B = A + self.width;
	int C = self.origin.y;
	int D = C + self.height;

	int a = f.origin.x;
	int b = a + f.width;
	int c = f.origin.y;
	int d = c + f.height;

	int x,y,w,h;
	BOOL flag=YES;

	if ( b < A)
	{
		flag = NO;
	}
	else if ( a < A && b >= A && b <= B)
	{
		x = A;
		w = b-x;
	}
	else if ( a < A && b > B )
	{
		x = A;
		w = B -x;
	}

	else if ( a >=A && b <= B )
	{
		x = a;
		w = b -x ;
	}
	else if ( a >=A && a <= B && b > B )
	{
		x = a;
		w = B - x;
	}
	else 
	{
		flag = NO;
	}

	NSLog (@"c = %i d = %i C = %i D = %i", c, d, C, D);
	if ( d < C )
	{
		flag = NO;
	}
	else if ( c < C && d >= C && d <= D )
	{
		y = C;
		h = d-y;
	}
	else if ( c < C && d >D )
	{
		y = C ;
		h = D - y;
	}
	else if ( c >=C && d <= D )
	{
		y = c;
		h = d -y ;
	}
	else if ( c >= C && c <= D && d > D )
	{
		y = c;
		h = D - y;
	}
	else 
	{
		flag = NO;
	}

	overLapOrigin.x = x;
	overLapOrigin.y = y;
	overLapRect.width = w;
	overLapRect.Height = h;
	overLapRect.origin = overLapOrigin;

	return overLapRect;
	
}	

@end
