#pragma once
import <string_view>;
import <string>;
import <set>;
import <vector>;
import <sstream>;
import <format>;

template <typename T>
struct IBase {
	template <typename U>
	void ally_with(U& others);
};
struct Hero : IBase<Hero> {
	Hero(std::string_view name) :name{ name } {}
	std::string to_string() const {
		using std::format;
		std::ostringstream os;
		os << format("{} -> [", name);
		for (auto c : connections) {
			os << format("{}, ", c->name);
		}
		os << "]";
	}
private:
	std::string name;
	std::set<Hero*> connections;
};
