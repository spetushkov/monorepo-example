import React, { FC } from "react";

type Props = {
    textColor: string;
};

const CustomButton: FC<Props> = (props) => {
    return <button style={{ 'color': props.textColor }}>{props.children}</button>
};

export default CustomButton;