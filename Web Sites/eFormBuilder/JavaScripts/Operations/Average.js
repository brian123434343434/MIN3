FormBuilder.AverageOperation= function() {
    this.calculate = function(operandValues) {
        var sum = 0;
        var count = 0;

        for(var i = 0; i < operandValues.length; i++) 
        {
            var value = operandValues[i];
            value = convertFormatedStringToNumber(value);
            if(!isNaN(value))
            {
                sum = sum + new Number(value);
                count++;
            }
        }

        return sum / count;
        
    }
}