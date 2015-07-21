  .text
  .globl clock
  .type clock, @function

#! file-offset 0x150bc0
#! rip-offset  0x110bc0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.clock:                       #        0x110bc0  0      OPC=0     
  pushq %rbx                  #  1     0x110bc0  1      OPC=1861  
  subl $0x10, %esp            #  2     0x110bc1  3      OPC=2384  
  addq %r15, %rsp             #  3     0x110bc4  3      OPC=72    
  movl 0xff6868b(%rip), %eax  #  4     0x110bc7  6      OPC=1156  
  leal 0xc(%rsp), %edi        #  5     0x110bcd  4      OPC=1066  
  nop                         #  6     0x110bd1  1      OPC=1343  
  nop                         #  7     0x110bd2  1      OPC=1343  
  nop                         #  8     0x110bd3  1      OPC=1343  
  nop                         #  9     0x110bd4  1      OPC=1343  
  nop                         #  10    0x110bd5  1      OPC=1343  
  nop                         #  11    0x110bd6  1      OPC=1343  
  nop                         #  12    0x110bd7  1      OPC=1343  
  andl $0xffffffe0, %eax      #  13    0x110bd8  6      OPC=131   
  nop                         #  14    0x110bde  1      OPC=1343  
  nop                         #  15    0x110bdf  1      OPC=1343  
  nop                         #  16    0x110be0  1      OPC=1343  
  addq %r15, %rax             #  17    0x110be1  3      OPC=72    
  callq %rax                  #  18    0x110be4  2      OPC=258   
  testl %eax, %eax            #  19    0x110be6  2      OPC=2436  
  movl %eax, %ebx             #  20    0x110be8  2      OPC=1157  
  jne .L_110c00               #  21    0x110bea  6      OPC=963   
  nop                         #  22    0x110bf0  1      OPC=1343  
  nop                         #  23    0x110bf1  1      OPC=1343  
  movl 0xc(%rsp), %eax        #  24    0x110bf2  4      OPC=1156  
  addl $0x10, %esp            #  25    0x110bf6  3      OPC=65    
  addq %r15, %rsp             #  26    0x110bf9  3      OPC=72    
  popq %rbx                   #  27    0x110bfc  1      OPC=1694  
  popq %r11                   #  28    0x110bfd  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  29    0x110bff  7      OPC=131   
  nop                         #  30    0x110c06  1      OPC=1343  
  nop                         #  31    0x110c07  1      OPC=1343  
  nop                         #  32    0x110c08  1      OPC=1343  
  nop                         #  33    0x110c09  1      OPC=1343  
  addq %r15, %r11             #  34    0x110c0a  3      OPC=72    
  jmpq %r11                   #  35    0x110c0d  3      OPC=928   
  nop                         #  36    0x110c10  1      OPC=1343  
  nop                         #  37    0x110c11  1      OPC=1343  
  nop                         #  38    0x110c12  1      OPC=1343  
.L_110c00:                    #        0x110c13  0      OPC=0     
  nop                         #  39    0x110c13  1      OPC=1343  
  nop                         #  40    0x110c14  1      OPC=1343  
  nop                         #  41    0x110c15  1      OPC=1343  
  nop                         #  42    0x110c16  1      OPC=1343  
  nop                         #  43    0x110c17  1      OPC=1343  
  nop                         #  44    0x110c18  1      OPC=1343  
  nop                         #  45    0x110c19  1      OPC=1343  
  nop                         #  46    0x110c1a  1      OPC=1343  
  nop                         #  47    0x110c1b  1      OPC=1343  
  nop                         #  48    0x110c1c  1      OPC=1343  
  nop                         #  49    0x110c1d  1      OPC=1343  
  nop                         #  50    0x110c1e  1      OPC=1343  
  nop                         #  51    0x110c1f  1      OPC=1343  
  nop                         #  52    0x110c20  1      OPC=1343  
  nop                         #  53    0x110c21  1      OPC=1343  
  nop                         #  54    0x110c22  1      OPC=1343  
  nop                         #  55    0x110c23  1      OPC=1343  
  nop                         #  56    0x110c24  1      OPC=1343  
  nop                         #  57    0x110c25  1      OPC=1343  
  nop                         #  58    0x110c26  1      OPC=1343  
  nop                         #  59    0x110c27  1      OPC=1343  
  nop                         #  60    0x110c28  1      OPC=1343  
  nop                         #  61    0x110c29  1      OPC=1343  
  nop                         #  62    0x110c2a  1      OPC=1343  
  nop                         #  63    0x110c2b  1      OPC=1343  
  nop                         #  64    0x110c2c  1      OPC=1343  
  nop                         #  65    0x110c2d  1      OPC=1343  
  callq .__errno              #  66    0x110c2e  5      OPC=260   
  movl %eax, %eax             #  67    0x110c33  2      OPC=1157  
  movl %eax, %eax             #  68    0x110c35  2      OPC=1157  
  movl %ebx, (%r15,%rax,1)    #  69    0x110c37  4      OPC=1136  
  addl $0x10, %esp            #  70    0x110c3b  3      OPC=65    
  addq %r15, %rsp             #  71    0x110c3e  3      OPC=72    
  movl $0xffffffff, %eax      #  72    0x110c41  6      OPC=1155  
  popq %rbx                   #  73    0x110c47  1      OPC=1694  
  popq %r11                   #  74    0x110c48  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  75    0x110c4a  7      OPC=131   
  nop                         #  76    0x110c51  1      OPC=1343  
  nop                         #  77    0x110c52  1      OPC=1343  
  nop                         #  78    0x110c53  1      OPC=1343  
  nop                         #  79    0x110c54  1      OPC=1343  
  addq %r15, %r11             #  80    0x110c55  3      OPC=72    
  jmpq %r11                   #  81    0x110c58  3      OPC=928   
                                                                  
.size clock, .-clock

