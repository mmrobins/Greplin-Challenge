txt = "FourscoreandsevenyearsagoourfaathersbroughtforthonthiscontainentanewnationconceivedinzLibertyanddedicatedtothepropositionthatallmenarecreatedequalNowweareengagedinagreahtcivilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"

txt = txt.downcase.split(//)
longest_palindrome_length = 1
longest_palindrome = ''
txt.each_with_index do |c, i|
  offset = 1
  while txt[i + offset] == txt[i - offset]
    offset += 1
  end
  if offset > 1
    palindrome_length = (offset - 1) * 2 + 1
    if palindrome_length > longest_palindrome_length
      longest_palindrome_length = palindrome_length
      longest_palindrome = txt[(i - offset + 1)..(i + offset - 1)].join('')
    end
  end
end

# this solution is definitely not optimal for speed
# I've done this same problem with suffix trees before
# but don't remember where I put that code
# This naive solution is fast enough for the text given
puts longest_palindrome
