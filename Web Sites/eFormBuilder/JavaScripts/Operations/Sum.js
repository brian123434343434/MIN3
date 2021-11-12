FormBuilder.SumOperation = function() {
    this.calculate = function(operandValues) {
        var sum = 0;

        for (var i = 0; i < operandValues.length; i++) {
            var value = operandValues[i];
            value = convertFormatedStringToNumber(value);
            if (!isNaN(value)) {
                sum = sum + value;
            }
        }

        return sum;
    }
}