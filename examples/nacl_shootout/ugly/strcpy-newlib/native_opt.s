  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movq %rdi, %rax             #  1     0x1267e0  3      OPC=1163  
  movl %edi, %ecx             #  2     0x1267e3  2      OPC=1158  
  andl $0x7, %edi             #  3     0x1267e5  3      OPC=132   
  movq $0x1, %r10             #  4     0x1267e8  10     OPC=1160  
  movq %rcx, %rdx             #  5     0x1267f2  3      OPC=1162  
  jne .L_68                   #  6     0x1267f5  6      OPC=963   
  nop                         #  7     0x1267fb  1      OPC=1343  
  addw %ax, %di               #  8     0x1267fc  3      OPC=63    
  nop                         #  9     0x1267ff  1      OPC=1343  
  shlw %cl, %r10w             #  10    0x126800  4      OPC=2265  
  jne .L_68                   #  11    0x126804  6      OPC=963   
  leaq -0x80(,%ecx,2), %r11   #  12    0x12680a  9      OPC=1069  
  andl %eax, %r11d            #  13    0x126813  3      OPC=134   
  movsbw (%r15,%r11,1), %r9w  #  14    0x126816  6      OPC=1276  
  andl %r11d, %eax            #  15    0x12681c  3      OPC=135   
  nop                         #  16    0x12681f  1      OPC=1343  
.L_40:                        #        0x126820  0      OPC=0     
  nop                         #  17    0x126820  1      OPC=1343  
  salw $0x7, %di              #  18    0x126821  4      OPC=2066  
  andw %r11w, %di             #  19    0x126825  4      OPC=130   
  shldq $0xfc, %rcx, %r10     #  20    0x126829  5      OPC=2291  
  nopl %eax                   #  21    0x12682e  3      OPC=1347  
  nop                         #  22    0x126831  1      OPC=1343  
  nopl %eax                   #  23    0x126832  3      OPC=1347  
  nop                         #  24    0x126835  1      OPC=1343  
  nop                         #  25    0x126836  1      OPC=1343  
  orb %dl, %al                #  26    0x126837  2      OPC=1389  
  orq %rax, %rdi              #  27    0x126839  3      OPC=1386  
  shrq $0xfc, %rdx            #  28    0x12683c  4      OPC=2315  
  sarb $0x1, %dil             #  29    0x126840  3      OPC=2103  
  subq $0xffffffc0, %rax      #  30    0x126843  6      OPC=2399  
  nop                         #  31    0x126849  1      OPC=1343  
  je .L_40                    #  32    0x12684a  6      OPC=893   
  subw $0x20, %ax             #  33    0x126850  5      OPC=2378  
  addl $0xfffffffa, %eax      #  34    0x126855  5      OPC=46    
  nop                         #  35    0x12685a  1      OPC=1343  
  addb %r10b, %dl             #  36    0x12685b  3      OPC=77    
  sarb %cl, %al               #  37    0x12685e  2      OPC=2101  
.L_68:                        #        0x126860  0      OPC=0     
  addq $0x1, %rdx             #  38    0x126860  4      OPC=70    
  addq $0x1, %rsi             #  39    0x126864  4      OPC=70    
  leal -0x1(%rsi), %ecx       #  40    0x126868  3      OPC=1066  
  movsbl (%r15,%rcx,1), %ecx  #  41    0x12686b  5      OPC=1280  
  nopl %eax                   #  42    0x126870  3      OPC=1347  
  nop                         #  43    0x126873  1      OPC=1343  
  nop                         #  44    0x126874  1      OPC=1343  
  leal -0x1(%rdx), %r8d       #  45    0x126875  4      OPC=1066  
  movb %cl, (%r15,%r8,1)      #  46    0x126879  4      OPC=1141  
  orb $0x0, %cl               #  47    0x12687d  3      OPC=1387  
  jne .L_68                   #  48    0x126880  6      OPC=963   
  nopl %eax                   #  49    0x126886  3      OPC=1347  
  popq %r11                   #  50    0x126889  2      OPC=1694  
  andl $0xe0, %r11d           #  51    0x12688b  4      OPC=132   
  addq %r15, %r11             #  52    0x12688f  3      OPC=72    
  jmpq %r11                   #  53    0x126892  3      OPC=928   
                                                                  
.size strcpy, .-strcpy
