// rpn_calc.cpp
// 逆波兰（RPN）计算器 —— 基础功能版
#include <iostream>
#include <sstream>
#include <stack>
#include <string>
#include <cctype>
#include <cmath>

class RPNCalculator {
    std::stack<double> st;
public:
    void clear() { while (!st.empty()) st.pop(); }
    void push(double v) { st.push(v); }
    double pop() {
        if (st.empty()) throw std::runtime_error("Stack underflow");
        double v = st.top(); st.pop(); return v;
    }
    void calculate(const std::string& op) {
        if (op == "+") { double b = pop(), a = pop(); push(a + b); }
        else if (op == "-") { double b = pop(), a = pop(); push(a - b); }
        else if (op == "*") { double b = pop(), a = pop(); push(a * b); }
        else if (op == "/") {
            double b = pop(), a = pop();
            if (b == 0) throw std::runtime_error("Divide by zero");
            push(a / b);
        }
        else throw std::runtime_error("Unknown operator: " + op);
    }
    void showStack() const {
        if (st.empty()) { std::cout << "[空]\n"; return; }
        std::stack<double> tmp = st;
        std::cout << "栈: ";
        while (!tmp.empty()) { std::cout << tmp.top() << ' '; tmp.pop(); }
        std::cout << '\n';
    }
    double result() const {
        if (st.empty()) throw std::runtime_error("No result");
        return st.top();
    }
};

int main() {
    RPNCalculator calc;
    std::string line;
    std::cout << "RPN 计算器（例: 5 5 + 3 *） 输入 q 退出\n";
    while (true) {
        std::cout << "> ";
        if (!std::getline(std::cin, line) || line == "q") break;
        std::stringstream ss(line);
        std::string token;
        try {
            while (ss >> token) {
                if (std::isdigit(token[0]) || (token[0] == '-' && token.size() > 1)) {
                    calc.push(std::stod(token));
                } else {
                    calc.calculate(token);
                }
            }
            std::cout << "结果: " << calc.result() << '\n';
            calc.showStack();          // 可选：显示最终栈
            calc.clear();              // 清空，准备下一轮
        } catch (const std::exception& e) {
            std::cout << "[错误] " << e.what() << '\n';
            calc.clear();
        }
    }
    return 0;
}
