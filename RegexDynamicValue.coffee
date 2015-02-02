RegexUseDynamicValue = () ->

    @evaluate = () ->
        regex = new RegExp @regex, 'g'
        if @input
            @input.match(regex)

    @title = () ->
        if @regex and @regex.length > 0
            return @regex
        return "Regexp"

    @text = () ->
        if @input and @input.length > 0
            return "#{@input}"
        return null

    return


RegexUseDynamicValue.identifier = "de.kreuzwerker.PawExtensions.RegexUseDynamicValue"
RegexUseDynamicValue.title = "Regex Dynamic Value"
RegexUseDynamicValue.inputs = [
    DynamicValueInput "regex", "Regex", "String"
    DynamicValueInput "input", "Input", "String"
]

registerDynamicValueClass RegexUseDynamicValue
