  .text
  .globl __gmpn_addmul_1
  .type __gmpn_addmul_1, @function

#! file-offset 0x722a0
#! rip-offset  0x322a0
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.__gmpn_addmul_1:            #        0x322a0  0      OPC=0     
  pushq %r12                 #  1     0x322a0  2      OPC=1861  
  movl %esi, %esi            #  2     0x322a2  2      OPC=1157  
  movl %edi, %edi            #  3     0x322a4  2      OPC=1157  
  xorl %eax, %eax            #  4     0x322a6  2      OPC=3758  
  pushq %rbx                 #  5     0x322a8  1      OPC=1861  
  movzwl %cx, %ebx           #  6     0x322a9  3      OPC=1303  
  movl %esi, %esi            #  7     0x322ac  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d   #  8     0x322ae  4      OPC=1156  
  shrl $0x10, %ecx           #  9     0x322b2  3      OPC=2312  
  jmpq .L_322e0              #  10    0x322b5  5      OPC=930   
  nop                        #  11    0x322ba  1      OPC=1343  
  nop                        #  12    0x322bb  1      OPC=1343  
  nop                        #  13    0x322bc  1      OPC=1343  
  nop                        #  14    0x322bd  1      OPC=1343  
  nop                        #  15    0x322be  1      OPC=1343  
  nop                        #  16    0x322bf  1      OPC=1343  
  nop                        #  17    0x322c0  1      OPC=1343  
  nop                        #  18    0x322c1  1      OPC=1343  
  nop                        #  19    0x322c2  1      OPC=1343  
  nop                        #  20    0x322c3  1      OPC=1343  
  nop                        #  21    0x322c4  1      OPC=1343  
.L_322c0:                    #        0x322c5  0      OPC=0     
  addl $0x4, %esi            #  22    0x322c5  3      OPC=65    
  addl $0x4, %edi            #  23    0x322c8  3      OPC=65    
  movl %esi, %esi            #  24    0x322cb  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d   #  25    0x322cd  4      OPC=1156  
  nop                        #  26    0x322d1  1      OPC=1343  
  nop                        #  27    0x322d2  1      OPC=1343  
  nop                        #  28    0x322d3  1      OPC=1343  
  nop                        #  29    0x322d4  1      OPC=1343  
  nop                        #  30    0x322d5  1      OPC=1343  
  nop                        #  31    0x322d6  1      OPC=1343  
  nop                        #  32    0x322d7  1      OPC=1343  
  nop                        #  33    0x322d8  1      OPC=1343  
  nop                        #  34    0x322d9  1      OPC=1343  
  nop                        #  35    0x322da  1      OPC=1343  
  nop                        #  36    0x322db  1      OPC=1343  
  nop                        #  37    0x322dc  1      OPC=1343  
  nop                        #  38    0x322dd  1      OPC=1343  
  nop                        #  39    0x322de  1      OPC=1343  
  nop                        #  40    0x322df  1      OPC=1343  
  nop                        #  41    0x322e0  1      OPC=1343  
  nop                        #  42    0x322e1  1      OPC=1343  
  nop                        #  43    0x322e2  1      OPC=1343  
  nop                        #  44    0x322e3  1      OPC=1343  
  nop                        #  45    0x322e4  1      OPC=1343  
.L_322e0:                    #        0x322e5  0      OPC=0     
  movzwl %r8w, %r10d         #  46    0x322e5  4      OPC=1303  
  shrl $0x10, %r8d           #  47    0x322e9  4      OPC=2312  
  movl %r10d, %r9d           #  48    0x322ed  3      OPC=1157  
  movl %r8d, %r11d           #  49    0x322f0  3      OPC=1157  
  imull %ebx, %r9d           #  50    0x322f3  4      OPC=821   
  imull %ebx, %r11d          #  51    0x322f7  4      OPC=821   
  movl %r9d, %r12d           #  52    0x322fb  3      OPC=1157  
  imull %ecx, %r10d          #  53    0x322fe  4      OPC=821   
  nop                        #  54    0x32302  1      OPC=1343  
  nop                        #  55    0x32303  1      OPC=1343  
  nop                        #  56    0x32304  1      OPC=1343  
  shrl $0x10, %r12d          #  57    0x32305  4      OPC=2312  
  imull %ecx, %r8d           #  58    0x32309  4      OPC=821   
  leal (%r11,%r10,1), %r10d  #  59    0x3230d  4      OPC=1066  
  addl %r12d, %r10d          #  60    0x32311  3      OPC=67    
  leal 0x10000(%r8), %r12d   #  61    0x32314  7      OPC=1066  
  cmpl %r10d, %r11d          #  62    0x3231b  3      OPC=472   
  movl %r10d, %r11d          #  63    0x3231e  3      OPC=1157  
  cmoval %r12d, %r8d         #  64    0x32321  4      OPC=272   
  andl $0xffff, %r9d         #  65    0x32325  7      OPC=131   
  shll $0x10, %r11d          #  66    0x3232c  4      OPC=2269  
  addl %eax, %r9d            #  67    0x32330  3      OPC=67    
  addl %r11d, %r9d           #  68    0x32333  3      OPC=67    
  cmpl %eax, %r9d            #  69    0x32336  3      OPC=472   
  setb %al                   #  70    0x32339  3      OPC=2169  
  shrl $0x10, %r10d          #  71    0x3233c  4      OPC=2312  
  movzbl %al, %eax           #  72    0x32340  3      OPC=1304  
  xchgw %ax, %ax             #  73    0x32343  2      OPC=3700  
  addl %r10d, %eax           #  74    0x32345  3      OPC=67    
  movl %edi, %edi            #  75    0x32348  2      OPC=1157  
  addl (%r15,%rdi,1), %r9d   #  76    0x3234a  4      OPC=66    
  setb %r11b                 #  77    0x3234e  4      OPC=2169  
  movl %edi, %edi            #  78    0x32352  2      OPC=1157  
  movl %r9d, (%r15,%rdi,1)   #  79    0x32354  4      OPC=1136  
  movzbl %r11b, %r11d        #  80    0x32358  4      OPC=1304  
  addl %r11d, %eax           #  81    0x3235c  3      OPC=67    
  addl %r8d, %eax            #  82    0x3235f  3      OPC=67    
  subl $0x1, %edx            #  83    0x32362  3      OPC=2384  
  jne .L_322c0               #  84    0x32365  6      OPC=963   
  popq %rbx                  #  85    0x3236b  1      OPC=1694  
  popq %r12                  #  86    0x3236c  2      OPC=1694  
  popq %r11                  #  87    0x3236e  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  88    0x32370  7      OPC=131   
  nop                        #  89    0x32377  1      OPC=1343  
  nop                        #  90    0x32378  1      OPC=1343  
  nop                        #  91    0x32379  1      OPC=1343  
  nop                        #  92    0x3237a  1      OPC=1343  
  addq %r15, %r11            #  93    0x3237b  3      OPC=72    
  jmpq %r11                  #  94    0x3237e  3      OPC=928   
  nop                        #  95    0x32381  1      OPC=1343  
  nop                        #  96    0x32382  1      OPC=1343  
  nop                        #  97    0x32383  1      OPC=1343  
  nop                        #  98    0x32384  1      OPC=1343  
  nop                        #  99    0x32385  1      OPC=1343  
  nop                        #  100   0x32386  1      OPC=1343  
  nop                        #  101   0x32387  1      OPC=1343  
  nop                        #  102   0x32388  1      OPC=1343  
  nop                        #  103   0x32389  1      OPC=1343  
  nop                        #  104   0x3238a  1      OPC=1343  
  nop                        #  105   0x3238b  1      OPC=1343  
                                                                
.size __gmpn_addmul_1, .-__gmpn_addmul_1

