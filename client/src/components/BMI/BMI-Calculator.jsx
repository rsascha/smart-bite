import { useState } from "react";

export default function Calculator() {
  const [errorMessage, setErrorMessage] = useState({});
  const [bmiResult, setBmiResult] = useState(null);
  const [bmiCategory, setBmiCategory] = useState("");

  const [inputValue, setInputValue] = useState({
    alter: "",
    weight: "",
    height: "",
    anrede: "",
  });

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setInputValue({
      ...inputValue,
      [name]: value.slice(0, 3), //die ersre 3 Nummer
    });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    const weightInkg = parseFloat(inputValue.weight);
    const heightInMeter = parseFloat(inputValue.height) / 100;

    const bmi = (weightInkg / (heightInMeter * heightInMeter)).toFixed(2);

    setBmiResult(bmi);
    console.log(inputValue.anrede, bmi);
    if (inputValue.anrede === "m") {
      if (bmi < 20) setBmiCategory("Untergewicht");
      else if (bmi < 25) setBmiCategory("Normalgewicht");
      else if (bmi < 30) setBmiCategory("Übergewicht");
      else setBmiCategory("Adipositas");
    } else if (inputValue.anrede === "w") {
      if (bmi < 19) setBmiCategory("Untergewicht");
      else if (bmi < 24) setBmiCategory("Normalgewicht");
      else if (bmi < 29) setBmiCategory("Übergewicht");
      else setBmiCategory("Adipositas");
    }
  };

  return (
    <>
      <div className="container">
        <div className="form-container">
          <h2>BMI Rechner</h2>
          <form onSubmit={handleSubmit} className="login-form">
            <div className="gender-container">
              <label htmlFor="anrede">Geschlecht: </label>
              <input
                required
                type="radio"
                name="anrede"
                value="w"
                onChange={handleInputChange}
              />
              weiblich
              <input
                required
                type="radio"
                name="anrede"
                value="m"
                onChange={handleInputChange}
              />
              männlich
            </div>
            <div className="input-container">
              <label htmlFor="alter">Alter: </label>
              <input
                type="number"
                required
                name="alter"
                value={inputValue.alter}
                onChange={handleInputChange}
                style={{
                  border: errorMessage.alter ? "1px solid red" : "",
                }}
              />
              {errorMessage.alter && <p>{errorMessage.alter}</p>}
            </div>

            <div className="input-container">
              <label htmlFor="weight">Gewicht(in kg): </label>
              <input
                type="number"
                required
                name="weight"
                value={inputValue.weight}
                onChange={handleInputChange}
                style={{
                  border: errorMessage.weight ? "1px solid red" : "",
                }}
              />
              {errorMessage.weight && <p>{errorMessage.weight}</p>}
            </div>
            <div className="input-container">
              <label htmlFor="height">Größe(in cm): </label>
              <input
                type="number"
                required
                name="height"
                value={inputValue.height}
                onChange={handleInputChange}
                style={{
                  border: errorMessage.height ? "1px solid red" : "",
                }}
              />
              {errorMessage.height && <p>{errorMessage.height}</p>}
            </div>
            <button type="submit">BMI Berechnen</button>
          </form>
          {bmiResult && (
            <div>
              <h3>Dein BMI ist: {bmiResult}</h3>
              <h3>Deine Kategorie ist: {bmiCategory}</h3>
            </div>
          )}
        </div>
      </div>
    </>
  );
}
