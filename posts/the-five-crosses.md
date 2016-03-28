# The Five Crosses
<!--- puzzle -->
*Posted by Jonny Arnold on 18th February 2014*

The Five Crosses is an inconspicuous-looking pub in a sleepy town. When it first opened, the pub was a common stop for travellers and -the- meeting point for the townspeople due to its boundless supply of gin, rum and beer. Now travellers are told to stay away and the people of the town have resorted to drinking in the Town Hall instead.

The reason this pub became ill-frequented is a simple one: it attracted the wrong people. Not long after opening, a group of travellers came to the town looking for somewhere to stay. They were led into the pub and given a warm welcome - after all, the more the merrier - but before long it became aware the group were not intending to leave. After several attempts at getting the travellers to leave, the owner of the pub could not take any more; he decided to zip up his bags and leave the pub. As a result, the travellers inherited the pub.

The group of travellers are a curious bunch. Each has a 'pet' - an animal they have with them for company. However, these animals are not your average pets. The group consisted of:

- Tom, a 10-year old boy obsessed with rats, but a poor track record for keeping them in a box. Tom's favourite rat sits permanently on his shoulder, mainly because it has been fed so much that it can not move.
- Yuk, a young lady who believes that she is more attractive than she actually is (allegedly she is named after the what her father said when she first saw her). She dresses herself only in coats made from yak fur. Coincidentally, her pet is a shivering, hairless yak.
- Ned, a man with scruffy hair, terrible body odour and a penchant for rum. His pet is a fox with similar alcoholic tendencies.
- Hal and Rin, a married couple who have made a vow never to leave each other's side - literally. Their pet snake is a 10-foot long boa constrictor which remains tied around their waists in a permanent knot to ensure they are never apart.
- Joy, an old woman who had previously been amateur boxing's heavyweight champion of the world under the nickname 'One Jab Joy', but has since resorted to just being heavy. Her long-suffering pet is a cow that Joy rides (bareback) to get around.

Some have attributed the failure of the pub to a lack of business acumen in the group of travellers. Others have attributed it to the sheer horror instilled in you when you see any of these unusual characters. However, the most popular reason for the failure of the pub is the notoriously difficult pub quiz held on Sunday nights. The quiz has never been completed by any patron, nor has it changed for the last 3 years. The quiz consists of a set of five crosses, each with a vowel in the centre with a space on each of its four sides.

[![](/posts/img/the-five-crosses.png)](/posts/img/the-five-crosses.png)

The objective of the quiz is to fill in each space with a single letter so that each cross consists of two words: one written top to bottom and one written left to right. To make the quiz more interesting, each letter of the alphabet features only once apart from Q, which does not feature at all. The answer to the quiz, when read across the crosses, identifies not only the pub's new owner, but also the reason why they were appointed. 

Many people in the town have scratched their heads about this quiz. Luckily, *the words you will need have already been given to you.*

**Who is the pub's owner?**

---

**Spoiler Alert:** Click <a href='javascript:toggle("answer")'>here</a> to show the answer

<div class="spoiler" id="answer">
  Ned is the pub's owner.
</div>

---

**Spoiler Alert:** Click <a href='javascript:toggle("method")'>here</a> to show how you get the answer

<div class="spoiler" id="method">

  <p>We could just use trial and error, but there are quite a few three-letter words out there!</p>

  <p>There is a clue in the penultimate paragraph: <i>"Luckily, the words you will need have already been given to you."</i></p>

  <p>If you take this to mean that all the required words are in the text, we can get a smaller sub-set of three-letter words to use. As well as this, we can reject any words that do not have a central vowel. When this constraint is put in place, only 43 words remain:</p>

  <p>PUB, WAS, FOR, DUE, GIN, RUM, NOW, NOT, LED, BUT, ZIP, HAS, PET, TOM, BOY, BOX, RAT, HIS, FED, CAN, YUK, HER, SAW, YAK, FUR, NED, MAN, FOX, HAL, RIN, VOW, JOY, HAD, JAB, COW, GET, NOR, SET, TOP, NEW, SAY</p>
  
  <p>(Note that BOA and YOU cannot be in the grid as they contain more than one vowel, and the vowels are already in the centre of each cross)</p>

  <p>We know that every letter (except Q) features once and only once. Therefore, if a letter only features in one of the above words then it must be in the crosses. We can now apply a strategy:

  <ol>
    <li>Find any letters that feature in one word only.</li>
    <li>Put this word in the relevant cross.</li>
    <li>Remove any words from the list that feature the other letter in the word.</li>
  </ol>

  <p>The letters Z and V feature once in the above word list, so ZIP and VOW must be in the cross. We will arbitrarily put them top-to-bottom:</p>

<pre>
 Z   V   _   _   _
_I_ _O_ _A_ _E_ _U_
 P   W   _   _   _
</pre>

  We can now get rid of any words with a P or W in and look again for single letters. Only CAN contains a C now, so we add that to the cross:

<pre>
 Z   V   C   _   _
_I_ _O_ _A_ _E_ _U_
 P   W   N   _   _
</pre>

  Removing all of the N's, we get GET (only G):

<pre>
 Z   V   C   G   _
_I_ _O_ _A_ _E_ _U_
 P   W   N   T   _
</pre>

  Removing the T's, we get RUM (only M):

<pre>
 Z   V   C   G   R
_I_ _O_ _A_ _E_ _U_
 P   W   N   T   M
</pre>

  Removing the R's, we get HIS (only I):

<pre>
 Z   V   C   G   R
HIS _O_ _A_ _E_ _U_
 P   W   N   T   M
</pre>

  Removing the H's and S's, we get LED (only L):

<pre>
 Z   V   C   G   R
HIS _O_ _A_ LED _U_
 P   W   N   T   M
</pre>

  Removing the D's and E's, we get stuck. Every letter features at least twice, so we have to start using trial and error. Eventually, we reach:

<pre>
 Z   V   C   G   R
HIS FOX JAB LED YUK
 P   W   N   T   M
</pre>

  We chose our cross directions arbitrarily, so now we twist until we get a valid sentence:

<pre>
 Z   V   J   L   Y
HIS FOX CAN GET RUM
 P   W   B   D   K
</pre>
   
  And here we see that Ned is the owner of the pub, because his fox can supply the pub with rum!

</div>
