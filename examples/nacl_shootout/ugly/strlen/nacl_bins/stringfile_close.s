  .text
  .globl stringfile_close
  .type stringfile_close, @function

#! file-offset 0x6a800
#! rip-offset  0x2a800
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.stringfile_close:             #        0x2a800  0      OPC=0     
  pushq %rbx                   #  1     0x2a800  1      OPC=1861  
  movl %edi, %ebx              #  2     0x2a801  2      OPC=1157  
  movl %ebx, %ebx              #  3     0x2a803  2      OPC=1157  
  movl 0x4(%r15,%rbx,1), %ecx  #  4     0x2a805  5      OPC=1156  
  testl %ecx, %ecx             #  5     0x2a80a  2      OPC=2436  
  je .L_2a820                  #  6     0x2a80c  6      OPC=893   
  nop                          #  7     0x2a812  1      OPC=1343  
  nop                          #  8     0x2a813  1      OPC=1343  
  movl %ebx, %ebx              #  9     0x2a814  2      OPC=1157  
  movl (%r15,%rbx,1), %edi     #  10    0x2a816  4      OPC=1156  
  nop                          #  11    0x2a81a  1      OPC=1343  
  nop                          #  12    0x2a81b  1      OPC=1343  
  nop                          #  13    0x2a81c  1      OPC=1343  
  nop                          #  14    0x2a81d  1      OPC=1343  
  nop                          #  15    0x2a81e  1      OPC=1343  
  nop                          #  16    0x2a81f  1      OPC=1343  
  nop                          #  17    0x2a820  1      OPC=1343  
  callq .free                  #  18    0x2a821  5      OPC=260   
.L_2a820:                      #        0x2a826  0      OPC=0     
  movl %ebx, %edi              #  19    0x2a826  2      OPC=1157  
  nop                          #  20    0x2a828  1      OPC=1343  
  nop                          #  21    0x2a829  1      OPC=1343  
  nop                          #  22    0x2a82a  1      OPC=1343  
  nop                          #  23    0x2a82b  1      OPC=1343  
  nop                          #  24    0x2a82c  1      OPC=1343  
  nop                          #  25    0x2a82d  1      OPC=1343  
  nop                          #  26    0x2a82e  1      OPC=1343  
  nop                          #  27    0x2a82f  1      OPC=1343  
  nop                          #  28    0x2a830  1      OPC=1343  
  nop                          #  29    0x2a831  1      OPC=1343  
  nop                          #  30    0x2a832  1      OPC=1343  
  nop                          #  31    0x2a833  1      OPC=1343  
  nop                          #  32    0x2a834  1      OPC=1343  
  nop                          #  33    0x2a835  1      OPC=1343  
  nop                          #  34    0x2a836  1      OPC=1343  
  nop                          #  35    0x2a837  1      OPC=1343  
  nop                          #  36    0x2a838  1      OPC=1343  
  nop                          #  37    0x2a839  1      OPC=1343  
  nop                          #  38    0x2a83a  1      OPC=1343  
  nop                          #  39    0x2a83b  1      OPC=1343  
  nop                          #  40    0x2a83c  1      OPC=1343  
  nop                          #  41    0x2a83d  1      OPC=1343  
  nop                          #  42    0x2a83e  1      OPC=1343  
  nop                          #  43    0x2a83f  1      OPC=1343  
  nop                          #  44    0x2a840  1      OPC=1343  
  callq .free                  #  45    0x2a841  5      OPC=260   
  xorl %eax, %eax              #  46    0x2a846  2      OPC=3758  
  popq %rbx                    #  47    0x2a848  1      OPC=1694  
  popq %r11                    #  48    0x2a849  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  49    0x2a84b  7      OPC=131   
  nop                          #  50    0x2a852  1      OPC=1343  
  nop                          #  51    0x2a853  1      OPC=1343  
  nop                          #  52    0x2a854  1      OPC=1343  
  nop                          #  53    0x2a855  1      OPC=1343  
  addq %r15, %r11              #  54    0x2a856  3      OPC=72    
  jmpq %r11                    #  55    0x2a859  3      OPC=928   
  xchgw %ax, %ax               #  56    0x2a85c  2      OPC=3700  
  nop                          #  57    0x2a85e  1      OPC=1343  
  nop                          #  58    0x2a85f  1      OPC=1343  
  nop                          #  59    0x2a860  1      OPC=1343  
  nop                          #  60    0x2a861  1      OPC=1343  
  nop                          #  61    0x2a862  1      OPC=1343  
  nop                          #  62    0x2a863  1      OPC=1343  
  nop                          #  63    0x2a864  1      OPC=1343  
  nop                          #  64    0x2a865  1      OPC=1343  
  nop                          #  65    0x2a866  1      OPC=1343  
  nop                          #  66    0x2a867  1      OPC=1343  
  nop                          #  67    0x2a868  1      OPC=1343  
  nop                          #  68    0x2a869  1      OPC=1343  
  nop                          #  69    0x2a86a  1      OPC=1343  
  nop                          #  70    0x2a86b  1      OPC=1343  
  nop                          #  71    0x2a86c  1      OPC=1343  
                                                                  
.size stringfile_close, .-stringfile_close

