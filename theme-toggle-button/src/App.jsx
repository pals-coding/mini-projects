import React, { useState } from "react";
import { useSpring, animated } from "react-spring";

function App() {
  const [isToggled, setToggle] = useState(false);

  const planetProps = useSpring({
    marginLeft: isToggled ? "0%" : "50%",
    transform: `rotate(${isToggled ? 0 : 180}deg)`,
    config: { duration: 400 },
  });

  const buttonProps = useSpring({
    borderRadius: isToggled ? "50%" : "0%",
    width: "100px",
    height: "51px",
    position: "relative",
    cursor: "pointer",
  });

  return (
    <div
      style={{
        borderRadius: "40px",
        width: "100px",
        backgroundColor: isToggled ? "#2a272e" : "#b2c2d9",
        border: isToggled ? "5px solid #2a272e" : "5px solid #b2c2d9",
      }}
    >
      <animated.div style={buttonProps} onClick={() => setToggle(!isToggled)}>
        <animated.img
          src={
            isToggled
              ? "https://img.icons8.com/external-prettycons-flat-prettycons/47/null/external-moon-space-prettycons-flat-prettycons.png"
              : "https://img.icons8.com/external-prettycons-flat-prettycons/47/null/external-planet-earth-space-prettycons-flat-prettycons-1.png"
          }
          alt="planet"
          style={{
            ...planetProps,
            width: "50px",
            height: "50px",
            position: "absolute",
          }}
        />
      </animated.div>
    </div>
  );
}

export default App;
