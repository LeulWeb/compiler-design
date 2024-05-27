

### Detailed Documentation:

#### 1. Overview:
The parser we've developed is a simple compiler for a custom programming language. It consists of a lexer (implemented using Flex) and a parser (implemented using Bison).

#### 2. Lexer (Flex - `language.l`):
- The lexer defines patterns for tokens such as keywords (`var`, `if`, `else`), identifiers, numbers, operators, and punctuation.
- Each pattern is associated with a token type, and the lexer returns the appropriate token type to the parser.
- Whitespace and newline characters are ignored.

#### 3. Parser (Bison - `language.y`):
- The parser defines the grammar rules for the custom programming language.
- It specifies how tokens should be combined to form valid program structures, such as statements, expressions, variable declarations, assignments, and control flow constructs (if-else).
- Actions associated with each rule are implemented to print debug messages and perform semantic analysis or code generation (if necessary).
- Error handling mechanisms are implemented to detect and report syntax errors with informative messages.



#### 4. Testing:
- We provided a sample input file (`test.txt`) containing various constructs of the custom programming language, including variable declarations, assignments, arithmetic expressions, and `if-else` statements.
- After recompiling the parser, we tested it with the sample input to verify that it correctly parsed the program and produced the expected output.

#### 5. Compilation and Execution:
- To compile the parser, we used Flex and Bison to generate the lexer and parser source files (`lex.yy.c` and `language.tab.c`, respectively), and then compiled them along with the main program.
- We executed the compiled parser with the input file (`test.txt`) as input, observing the output to ensure correct parsing and error handling.

### Conclusion:
With the identified issues resolved and the parser functioning correctly, we now have a working compiler for our custom programming language.


