"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const react_1 = __importDefault(require("react"));
const Button = (props) => {
    return react_1.default.createElement("button", { style: { 'color': props.textColor } }, props.children);
};
exports.default = Button;