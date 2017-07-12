# whiteSpaceRemover
This small utility will help you remove horizontal whitespaces from your code. End result is clean &amp; more readable code ;-)

# Introduction
If you are a developer or a sys-admin, chances are that your code/scripts may have many horizontal whitespaces that make your code difficult to read.
It might also make your code look distracting. If you are not a fan of horizontal whitespaces (like me), ``whiteSpaceRemover``will remove that for you in just a second.
My script backs up the original file, so you are always safe when you use it :-)

# Usage
Just execute the script as below. Make sure you pass a valid filename.

```
./whiteSpaceRemover.sh filename
```

Below is the output : - 
```
shashank@shashank-dbserver:~/Desktop$ ./whitespaceRemover.sh whitespace.txt 

Hi There! Welcome to whitespaceRemover. This small utility will help you remove horizontal whitespaces from your code. End result is clean & more readable code ;-)

whitespaceRemover takes care of backing up the original file before overwriting it, so always have your original file with you.

Safety first! Hence, backing up the original file as 'whitespace.txt.whitespaceRemover.orig'...

Removing all horizontal whitespaces from your file/code now...

Horizontal whitespaces removed. Please check your file.
I hope you liked it ;-)
shashank@shashank-dbserver:~/Desktop$ cat whitespace.txt
Hi There,
My name is Shashank.
I am a Linux/Database Admin & a hobbyist developer.
Here I am demonstrating my script in action. This sample code is taken from http://examples.oreilly.com/9781565922341/1.1.txt.
----------------------------------------------------------------------------------
<!-- This example is from the book _JavaScript: The Definitive Guide_.     -->
<!-- Written by David Flanagan.  Copyright (c) 1996 O'Reilly & Associates. -->
<!-- This example is provided WITHOUT WARRANTY either expressed or implied.-->
<!-- You may study, use, modify, and distribute it for any purpose.        -->
<HTML>
<BODY>
<SCRIPT LANGUAGE="JavaScript">
document.write("<h2>Table of Factorials</h2>");
for(i = 1, fact = 1; i < 10; i++, fact *= i) {
    document.write(i + "! = " + fact);
    document.write("<br>");
}
</SCRIPT>
</BODY>
</HTML> 

```
And below is the original file before execution of my script.

```
shashank@shashank-dbserver:~/Desktop$ cat whitespace.txt 
Hi There,


My name is Shashank.





I am a Linux/Database Admin & a hobbyist developer.


Here I am demonstrating my script in action. This sample code is taken from http://examples.oreilly.com/9781565922341/1.1.txt.



----------------------------------------------------------------------------------
<!-- This example is from the book _JavaScript: The Definitive Guide_.     -->


<!-- Written by David Flanagan.  Copyright (c) 1996 O'Reilly & Associates. -->

<!-- This example is provided WITHOUT WARRANTY either expressed or implied.-->



<!-- You may study, use, modify, and distribute it for any purpose.        -->

<HTML>


<BODY>


<SCRIPT LANGUAGE="JavaScript">


document.write("<h2>Table of Factorials</h2>");


for(i = 1, fact = 1; i < 10; i++, fact *= i) {



    document.write(i + "! = " + fact);

    document.write("<br>");
}

</SCRIPT>
</BODY>



</HTML> 

```
