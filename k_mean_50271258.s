
.data
    #array for x centroids and array for y centroids

    ArrayLeft: .space 40
    ArrayRight: .space 40
    LeftCluster: .space 80
    RightCluster: .space 80
    CheckCentroids: .space 16


FinalResult:.asciiz "\n\nThe Final Centroids is:\n"

AskX1:.asciiz "please enter Centroids X1:"

AskY1:.asciiz "please enter Centroids Y1:"

AskX2:.asciiz "please enter Centroids X2:"

AskY2:.asciiz "please enter Centroids Y2:"
    
newLine:.asciiz "\n"


FinalClusters1: .asciiz "\n\nThe Final Cluster1 is:\n"

FinalClusters2: .asciiz "\n\nThe Final Cluster2 is:\n"

comma: .asciiz ","


staticPtX1: .asciiz "please enter point X1:"
staticPtY1: .asciiz "please enter point Y1:"

staticPtX2: .asciiz "please enter point X2:"
staticPtY2: .asciiz "please enter point Y2:"

staticPtX3: .asciiz "please enter point X3:"
staticPtY3: .asciiz "please enter point Y3:"

staticPtX4: .asciiz "please enter point X4:"
staticPtY4: .asciiz "please enter point Y4:"

staticPtX5: .asciiz "please enter point X5:"
staticPtY5: .asciiz "please enter point Y5:"

staticPtX6: .asciiz "please enter point X6:"
staticPtY6: .asciiz "please enter point Y6:"

staticPtX7: .asciiz "please enter point X7:"
staticPtY7: .asciiz "please enter point Y7:"

staticPtX8: .asciiz "please enter point X8:"
staticPtY8: .asciiz "please enter point Y8:"

staticPtX9: .asciiz "please enter point X9:"
staticPtY9: .asciiz "please enter point Y9:"

staticPtX10: .asciiz "please enter point X10:"
staticPtY10: .asciiz "please enter point Y10:"







.text
.globl main

main:


# ask for Centroids x1


li $v0, 4
la $a0, AskX1
syscall


#get x1

li $v0, 5
syscall


#store the x1

move $t0, $v0



# ask for Centroids y1


li $v0, 4
la $a0, AskY1
syscall


#get y1

li $v0, 5
syscall


#store the y1

move $t1, $v0






# ask for Centroids x2


li $v0, 4
la $a0, AskX2
syscall


#get x2

li $v0, 5
syscall


#store the x2

move $t2, $v0




# ask for Centroids y2


li $v0, 4
la $a0, AskY2
syscall


#get y2

li $v0, 5
syscall


#store the y2

move $t3, $v0

li $a0, 0
li $a1, 0
li $a2, 0






#array pointer counter

   li $s6, 0
   li $s7, 0




# ask for static point X1


li $v0, 4
la $a0, staticPtX1
syscall


#get X1

li $v0, 5
syscall


#store the X1

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4



# ask for static point Y1


li $v0, 4
la $a0, staticPtY1
syscall


#get Y1

li $v0, 5
syscall


#store the Y1

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4





# ask for static point X2


li $v0, 4
la $a0, staticPtX2
syscall


#get X2

li $v0, 5
syscall


#store the X2

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 # ask for static point Y2


li $v0, 4
la $a0, staticPtY2
syscall


#get Y2

li $v0, 5
syscall


#store the Y2

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
   
   
   
   
# ask for static point X3


li $v0, 4
la $a0, staticPtX3
syscall


#get X3

li $v0, 5
syscall


#store the X3

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 



 # ask for static point Y3


li $v0, 4
la $a0, staticPtY3
syscall


#get Y3

li $v0, 5
syscall


#store the Y3

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4




# ask for static point X4


li $v0, 4
la $a0, staticPtX4
syscall


#get X4

li $v0, 5
syscall


#store the X4

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 
 
  # ask for static point Y4


li $v0, 4
la $a0, staticPtY4
syscall


#get Y4

li $v0, 5
syscall


#store the Y4

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4




# ask for static point X5


li $v0, 4
la $a0, staticPtX5
syscall


#get X5

li $v0, 5
syscall


#store the X5

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 
 
   # ask for static point Y5


li $v0, 4
la $a0, staticPtY5
syscall


#get Y5

li $v0, 5
syscall


#store the Y5

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
 
 
 
 # ask for static point X6


li $v0, 4
la $a0, staticPtX6
syscall


#get X6

li $v0, 5
syscall


#store the X6

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 
 
    # ask for static point Y6


li $v0, 4
la $a0, staticPtY6
syscall


#get Y6

li $v0, 5
syscall


#store the Y6

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
   
   
   
   
   
   
 # ask for static point X7


li $v0, 4
la $a0, staticPtX7
syscall


#get X7

li $v0, 5
syscall


#store the X7

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 
 
   # ask for static point Y7


li $v0, 4
la $a0, staticPtY7
syscall


#get Y7

li $v0, 5
syscall


#store the Y7

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
 
 
 
 
 
 
    
 # ask for static point X8


li $v0, 4
la $a0, staticPtX8
syscall


#get X8

li $v0, 5
syscall


#store the X8

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
 
 
 
   # ask for static point Y8


li $v0, 4
la $a0, staticPtY8
syscall


#get Y8

li $v0, 5
syscall


#store the Y8

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
 
 
 
 
  # ask for static point X9


li $v0, 4
la $a0, staticPtX9
syscall


#get X9

li $v0, 5
syscall


#store the X9

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
  
   # ask for static point Y9


li $v0, 4
la $a0, staticPtY9
syscall


#get Y9

li $v0, 5
syscall


#store the Y9

move $t6, $v0


 sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
   
   
   
   
     # ask for static point X10


li $v0, 4
la $a0, staticPtX10
syscall


#get X10

li $v0, 5
syscall


#store the X10

move $t6, $v0


sw $t6, ArrayLeft($s6)  
 addi $s6, $s6, 4
 
 
 
   # ask for static point Y10


li $v0, 4
la $a0, staticPtY10
syscall


#get Y10

li $v0, 5
syscall


#store the Y10

move $t6, $v0


sw $t6, ArrayRight($s7)  
   addi $s7, $s7, 4
   
   
   
   
li $a0, 0
li $a1, 0
li $a2, 0
li $s6, 0
li $s7, 0
li $t6, 0

 
 ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ##
 
 








   
   

#flag bit to decide if stop the program

li $s8,0

beq $s8,$zero skip



firstTime:

li $s8,1


skip:




   
# save base array address into register.

li,$s6,0
li,$s7,0
li,$t4,0
la $s6,ArrayLeft
la $s7,ArrayRight
li,$a0,0
li,$a2,0
li,$a1,0
li,$a3,0



# calculate initial

li,$t4,0      #i = 0
        
li,$t5,10     # 10




quit:


bge $t4, $t5, endLoop  # i >= 10, end calculate initial part



sll $t6, $t4, 2
addi $t4,$t4,1



add $k0, $s6, $t6  # ArrayLeft + i * 4

add $k1, $s7, $t6  # ArrayRight + i * 4

lw $t7, 0($k0)   #t7 = ArrayLeft[i]  -> X

lw $t8, 0($k1)   #t8 = ArrayRight[i] -> Y



#compute left part of the equation
  
sub $s0,$t0,$t7   #(𝑥2 − 𝑥1)  

sub $s1,$t1,$t8   #(𝑦2 − 𝑦1)  

mul $s0,$s0,$s0  # power of 2

mul $s1,$s1,$s1  # power of 2

add $s2,$s0,$s1  # (𝑥2 − 𝑥1)^2 + (𝑦2 − 𝑦1)^2  #s1 and s2 please recyle


#reset to reuse registers
li $s0,0
li $s1,0



#compute right part of the equation

sub $s0,$t2,$t7   #(𝑥2 − 𝑥1)

sub $s1,$t3,$t8   #(𝑦2 − 𝑦1) 

mul $s0,$s0,$s0  # power of 2

mul $s1,$s1,$s1  # power of 2

add $s3,$s0,$s1    # 𝑥2 − 𝑥1)^2 + (𝑦2 − 𝑦1)^2  #s1 and s2  s3  s0 please recyle



beq $s2,$s3 EqualShowTime    #left == right
blt $s2,$s3 LeftShowTime     #left < right
blt $s3,$s2 RightShowTime    #left > right

#store the left path of clusters and the counter of it



LeftShowTime:

sw $t7,LeftCluster($a0) #save the left clusters

addi $a0,$a0,4   #next index


addi $a2,$a2,1  # increase left clusters counter


sw $t8,LeftCluster($a0) #save the left clusters

addi $a0,$a0,4   #next index







j reset


#store the Right path of clusters and the counter of it


RightShowTime:

sw $t7,RightCluster($a1) #save the Right clusters

addi $a1,$a1,4   #next index


addi $a3,$a3,1  # increase Right clusters counter

sw $t8,RightCluster($a1) #save the Right clusters

addi $a1,$a1,4   #next index


reset:

#reset to reuse registers


addi $s0,$s0,0
addi $s1,$s1,0
addi $s2,$s2,0
addi $s3,$s3,0

EqualShowTime:



j quit


endLoop:



 
 
  ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ##   






  
 # distance and new Centroid  ( left )
  
  
  # Cluster 1 X_coordinate AND Y_coordinate and update centroids
  
  
 #clear cache
 
la $a0,LeftCluster   
li $t9,0
li $t4,0
li $s2,0
li $t1,0 #reset Y1 centroid 
li $t0,0 #reset X1 centroid 
addi $s0,$a0,0


loop1:

bge $t9,$a2 jumpOut1   # if 0 <= left.length, end the loop



lw $s1,0($s0)

addi $s0,$s0,4


lw $s2,0($s0)

addi $s0,$s0,4

add $t0,$t0,$s1      # result for adding all left clusters X values

add $t1,$t1,$s2      # result for adding all right clusters Y values 

addi $t9,$t9,1



j loop1
    
    
jumpOut1:
     

div $t0,$t0,$a2   #update left x
div $t1,$t1,$a2   #update right x





 # distance and new Centroid  ( right )
  
  
  # Cluster 2 X_coordinate AND Y_coordinate and update centroids


#clear cache

la $a0,RightCluster   
li $t9,0
li $s2,0
li $s1,0
li $t2,0    #reset X2 centroid
li $t3,0    #reset Y2 centroid
#mul $a2,$a2,2
addi $s0,$a0,0





loop2:

bge $t9,$a3 jumpOut2   # if 0 <= left.length, end the loop

lw $s1,0($s0)      # x

addi $s0,$s0,4

lw $s2,0($s0)       # y

addi $s0,$s0,4


add $t2,$t2,$s1      # result for adding all right clusters X values

add $t3,$t3,$s2      # result for adding all right clusters Y values

addi $t9,$t9,1


j loop2
    
    
    
jumpOut2:
     
div $t2,$t2,$a3  
div $t3,$t3,$a3   


bne $s8,$zero nTimes      #not first time access,check terminal condition b4 update


sw $t0, CheckCentroids($v1)
 addi $v1, $v1, 4
sw $t1, CheckCentroids($v1) 
 addi $v1, $v1, 4
sw $t2, CheckCentroids($v1) 
 addi $v1, $v1, 4
sw $t3, CheckCentroids($v1) 
 addi $v1, $v1, 4



  
  
 beq $s8,$zero firstTime    #we dont want to compare the cluster and Centroid when                               # there is no data to compare with
 
 
  
 
nTimes:

li $t9,0
li $t4,0


la $t4,CheckCentroids

lw $t9,0($t4)
bne $t9,$t0 notEqual


lw $t9,4($t4)
bne $t9,$t1 notEqual


lw $t9,8($t4)
bne $t9,$t2 notEqual

lw $t9,12($t4)
bne $t9,$t3 notEqual
  
 j end
 
 
 
  
notEqual:   

 li $v1,0

sw $t0, CheckCentroids($v1)
 addi $v1, $v1, 4
sw $t1, CheckCentroids($v1) 
 addi $v1, $v1, 4
sw $t2, CheckCentroids($v1) 
 addi $v1, $v1, 4
sw $t3, CheckCentroids($v1) 
 addi $v1, $v1, 4

   
j firstTime
   
   
   
  end: 
  
  
  
  
  
li 		$v0, 4			       # system call to print string 
la 		$a0, FinalResult       # copy the string into $a0
syscall					       # print string

  
  
  
  
#get final Centroids result


li $v0,1     #system call to print int 
move $a0,$t0 #copy t0 to a0
syscall      #print integer
 
 li 		$v0, 4			       # system call to print string 
la 		$a0, comma       # copy the string into $a0
syscall					       # print string

 
 li $v0,1     #system call to print int 
move $a0,$t1 #copy t1 to a0
syscall      #print integer

  
li 		$v0, 4			       # system call to print string 
la 		$a0, newLine       # copy the string into $a0
syscall					       # print string


li $v0,1     #system call to print int 
move $a0,$t2 #copy t2 to a0
syscall      #print integer

li 		$v0, 4			       # system call to print string 
la 		$a0, comma       # copy the string into $a0
syscall	


li $v0,1     #system call to print int 
move $a0,$t3 #copy t3 to a0
syscall      #print integer


  
li 		$v0, 4			       # system call to print string 
la 		$a0, newLine       # copy the string into $a0
syscall					       # print string





  
li 		$v0, 4			       # system call to print string 
la 		$a0, FinalClusters1    # copy the string into $a0
syscall					       # print string





  
li $v0, 0
li $a0, 0
li $s3, 0
li $s2, 0
li $t4, 0

while:
        bge $s2,$a2 bye
        
        lw $t4, LeftCluster($s3)
        
        addi $s3,$s3,4
        
        li $v0, 1
        
        move $a0,$t4
        
        syscall
        
        li 		$v0, 4			       # system call to print string 
        
        la 		$a0, comma       # copy the string into $a0
        
        syscall	
        
        lw $t4, LeftCluster($s3)
        
        addi $s3,$s3,4
        
        li $v0, 1
        
        move $a0,$t4
        
        syscall
        
        li 		$v0, 4			       # system call to print string 
        la 		$a0, newLine       # copy the string into $a0
        syscall					       # print string

    
        addi $s2,$s2,1
        
        j while

        

bye:


  
li 		$v0, 4			       # system call to print string 
la 		$a0, FinalClusters2    # copy the string into $a0
syscall					       # print string





  
li $v0, 0
li $a0, 0
li $s3, 0
li $s2, 0
li $t4, 0


xiewanlaXD:

        bge $s2,$a3 byebye
        
        lw $t4, RightCluster($s3)
        
        addi $s3,$s3,4
        
        li $v0, 1
        
        move $a0,$t4
        
        syscall
        
        li 		$v0, 4			       # system call to print string 
        
        la 		$a0, comma       # copy the string into $a0
        
        syscall	
        
        lw $t4, RightCluster($s3)
        
        addi $s3,$s3,4
        
        li $v0, 1
        
        move $a0,$t4
        
        syscall
        
        li 		$v0, 4			       # system call to print string 
        la 		$a0, newLine       # copy the string into $a0
        syscall	
        
        addi $s2,$s2,1
        
        j xiewanlaXD

        

byebye:


#li $v0, 0
#li $a0, 0
#li $s8, 0
#li $s3, 0
#li $s2, 0
#li $a3, 0
#li $a2, 0




li $v0, 10 # 10 is system call code for exit

syscall # system call for exit
        
 
    
    
        