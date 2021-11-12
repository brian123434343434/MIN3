FormBuilder.MultiplyOperation = function() {
    this.calculate = function(operandValues) {
        var mul = 1;

        if (operandValues.lenght == 0) {
            mul = 0;
        }
        else {
        
            for (var i = 0; i < operandValues.length; i++) {
                var value = operandValues[i];
                value = convertFormatedStringToNumber(value);
                if (!isNaN(value)) {
                    mul = mul * value;
                }
            }
        }

        return mul;
    }
}