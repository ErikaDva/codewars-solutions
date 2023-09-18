// Multiply
// Language: JavaScript
// Version: Node v18.x
// Difficulty: 8 kyu

function multiply(a, b){
  return a * b;
}


// Tests

const assert = require("chai").assert;

describe("Multiply", () => {
  it("fixed tests", () => {
    assert.strictEqual(multiply(1,1), 1);
    assert.strictEqual(multiply(2,1), 2);
    assert.strictEqual(multiply(2,2), 4);
    assert.strictEqual(multiply(3,5), 15);   
  });
});