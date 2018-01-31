public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2=noSpace(word);
  String word3=letter(word2);
  String word4=lower(word3);
  if((reverse(word4)).equals(word4))
      return true;
    return false;
}
public String reverse(String str)
{
  str.toLowerCase();
    String sNew = new String();
    int last=str.length()-1;
    for(int nI=last;nI>=0;nI--)
        sNew=sNew+str.substring(nI,nI+1);
    return sNew;
}
public String noSpace(String no)
{
  no.toLowerCase();
  String noS= new String();
  for(int i=0;i<no.length();i++)
    if(!no.substring(i,i+1).equals(" "))
      noS=noS+ no.charAt(i);
    return noS;
}
public String letter(String let)
{
  let.toLowerCase();
  String noNum=new String();
  for(int i=0;i<let.length();i++)
      if(Character.isLetter(let.charAt(i)))
        noNum=noNum+let.charAt(i);
      return noNum;
}
public String lower(String low)
{
  return low.toLowerCase();
}