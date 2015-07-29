  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.strcpy:                          #        0x1267e0  0      OPC=0     
  movq %rdi, %rdx                 #  1     0x1267e0  3      OPC=1163  
  movq %rdx, %rcx                 #  2     0x1267e3  3      OPC=1163  
  movq %rcx, %rax                 #  3     0x1267e6  3      OPC=1162  
  orq %rsi, %rcx                  #  4     0x1267e9  3      OPC=1386  
  andl $0x7, %ecx                 #  5     0x1267ec  3      OPC=132   
  jne .L_68                       #  6     0x1267ef  6      OPC=963   
  leal (%rsi), %r11d              #  7     0x1267f5  3      OPC=1066  
  movq (%r15,%r11,1), %rcx        #  8     0x1267f8  4      OPC=1161  
  orq %rcx, %rdx                  #  9     0x1267fc  3      OPC=1385  
  nop                             #  10    0x1267ff  1      OPC=1343  
  movq $0x8080808080808080, %r10  #  11    0x126800  10     OPC=1160  
  notw %dx                        #  12    0x12680a  3      OPC=1352  
  salw $0x1, %dx                  #  13    0x12680d  3      OPC=2067  
  nopl %eax                       #  14    0x126810  3      OPC=1347  
  movq %rax, %rdx                 #  16    0x126817  3      OPC=1163  
  movq $0xfefefefefefefeff, %r11  #  22    0x12682a  10     OPC=1160  
.L_40:                            #        0x126820  0      OPC=0     
  addq $0x8, %rdx                 #  18    0x126820  4      OPC=70    
  addq $0x8, %rsi                 #  20    0x126825  4      OPC=70    
  leal -0x8(%rdx), %r8d           #  26    0x126837  4      OPC=1066  
  movq %rcx, (%r15,%r8,1)         #  27    0x12683b  4      OPC=1138  
  movl %esi, %r8d                 #  29    0x126840  3      OPC=1158  
  movq (%r15,%r8,1), %rcx         #  30    0x126843  4      OPC=1161  
  leaq (%rcx,%r11,1), %r8         #  33    0x12684d  4      OPC=1069  
  movq %rcx, %r9                  #  31    0x126847  3      OPC=1163  
  nop
  nop
  notq %r9                        #  32    0x12684a  3      OPC=1354  
  andq %r9, %r8                   #  34    0x126851  3      OPC=140   
  testq %r10, %r8                 #  35    0x126854  3      OPC=2438  
  je .L_40                        #  36    0x126857  6      OPC=893   
  nop                             #  37    0x12685d  1      OPC=1343  
  nop                             #  38    0x12685e  1      OPC=1343  
  nop                             #  39    0x12685f  1      OPC=1343  
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
.L_68:                            #        0x126860  0      OPC=0     
  addq $0x1, %rsi                 #  40    0x126860  4      OPC=70    
  leal -0x1(%rsi), %ecx           #  41    0x126864  3      OPC=1066  
  movsbl (%r15,%rcx,1), %ecx      #  42    0x126867  5      OPC=1280  
  addq $0x1, %rdx                 #  43    0x12686c  4      OPC=70    
  leal -0x1(%rdx), %r8d           #  44    0x126870  4      OPC=1066  
  movb %cl, (%r15,%r8,1)          #  45    0x126874  4      OPC=1141  
  andb $0xfe, %dil                #  46    0x126878  4      OPC=141   
  bsfl %ecx, %r9d                 #  47    0x12687c  4      OPC=191   
  jne .L_68                       #  48    0x126880  6      OPC=963   
  popq %r11                       #  49    0x126886  2      OPC=1694  
  andl $0xe0, %r11d               #  50    0x126888  4      OPC=132   
  addq %r15, %r11                 #  51    0x12688c  3      OPC=72    
  jmpq %r11                       #  52    0x12688f  3      OPC=928   
                                                                      
.size strcpy, .-strcpy
