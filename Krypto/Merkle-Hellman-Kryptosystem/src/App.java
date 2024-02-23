public class App {

    String[] binaer=new String[256];
    int[] zahlen=new int[256];
    int[] schluessel={211,212,424,217,13,447,473,105};
    int[] nachricht={876, 1674, 853, 424, 1007, 1188, 1214, 1326, 1188, 1300, 529, 746, 746};

    public static void main(String[] args) throws Exception {
        App a=new App();
        a.binaerBefuellen();
        a.zahlenBefuellen();
        a.entschluesseln();

    }

    public void binaerBefuellen(){
        for(int i=0;i<binaer.length;i++){
            binaer[i]=Integer.toBinaryString(i);
            while (binaer[i].length()<8) {
                binaer[i]="0"+binaer[i];
            }
        }
    }

    public void zahlenBefuellen(){
        for(int i =0; i<zahlen.length;i++){
            for(int j=0;j<8;j++){
                zahlen[i]+=Character.getNumericValue(binaer[i].charAt(j))*schluessel[j];
            }
        }
    }

    public void entschluesseln(){
        String message="";
        for(int i =0; i<nachricht.length;i++){
            for(int j=0;j<zahlen.length;j++){
                if(zahlen[j]==nachricht[i]){
                    message=message+String.valueOf((char)j);
                    break;
                }
            }
        }
        System.out.println("");
        System.out.println(message);
    }


}
