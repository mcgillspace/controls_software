function [EX] = CrossProductFactor(C)

EX = [0, -C(3), C(2); C(3), 0, -C(1); -C(2), C(1), 0];