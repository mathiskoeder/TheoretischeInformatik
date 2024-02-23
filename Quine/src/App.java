public class App {
    public static void main(String[] args) throws Exception {
        // Mein Name ist Mathis
        char quote = 34;
        String[] code = {
                "public class App {",
                "    public static void main(String[] args) {",
                "        //Mein Name ist Mathis",
                "        char quote = 34;",
                "        String[] code = {",
                "        };",
                "        for(int i=0; i<4; i++){",
                "            System.out.println(code[i]);",
                "        }",
                "        for(int i=0; i<code.length; i++){",
                "            System.out.println(String.valueOf(' ')+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+quote + code[i] + quote + ',');",
                "        }",
                "        for(int i=4; i<code.length; i++){",
                "            System.out.println(code[i]);",
                "        }",
                "    }",
                "}",
        };
        for (int i = 0; i < 5; i++) {
            System.out.println(code[i]);
        }
        for (int i = 0; i < code.length; i++) {
            System.out.println(String.valueOf(' ')+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+quote + code[i] + quote + ',');
        }
        for (int i = 5; i < code.length; i++) {
            System.out.println(code[i]);
        }
    }
}
