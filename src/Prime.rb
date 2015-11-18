#!/usr/bin/ruby

# Computes the largest prime factor of a given number. 
$prime = 600851475143  
$i = 2

while $i <= $prime  do
   if ($prime % $i == 0)
      $prime = $prime / $i
      $i = $i - 1
   end

   $i +=1;
end

puts($i)
