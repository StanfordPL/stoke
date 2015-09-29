  .text
  .globl clock
  .type clock, @function

#! file-offset 0x151b20
#! rip-offset  0x111b20
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.clock:                       #        0x111b20  0      OPC=<label>           
  pushq %rbx                  #  1     0x111b20  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x111b21  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x111b24  3      OPC=addq_r64_r64      
  movl 0xff6772b(%rip), %eax  #  4     0x111b27  6      OPC=movl_r32_m32      
  leal 0xc(%rsp), %edi        #  5     0x111b2d  4      OPC=leal_r32_m16      
  nop                         #  6     0x111b31  1      OPC=nop               
  nop                         #  7     0x111b32  1      OPC=nop               
  nop                         #  8     0x111b33  1      OPC=nop               
  nop                         #  9     0x111b34  1      OPC=nop               
  nop                         #  10    0x111b35  1      OPC=nop               
  nop                         #  11    0x111b36  1      OPC=nop               
  nop                         #  12    0x111b37  1      OPC=nop               
  andl $0xffffffe0, %eax      #  13    0x111b38  6      OPC=andl_r32_imm32    
  nop                         #  14    0x111b3e  1      OPC=nop               
  nop                         #  15    0x111b3f  1      OPC=nop               
  nop                         #  16    0x111b40  1      OPC=nop               
  addq %r15, %rax             #  17    0x111b41  3      OPC=addq_r64_r64      
  callq %rax                  #  18    0x111b44  2      OPC=callq_r64         
  testl %eax, %eax            #  19    0x111b46  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  20    0x111b48  2      OPC=movl_r32_r32      
  jne .L_111b60               #  21    0x111b4a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  22    0x111b4c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  23    0x111b50  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  24    0x111b53  3      OPC=addq_r64_r64      
  popq %rbx                   #  25    0x111b56  1      OPC=popq_r64_1        
  popq %r11                   #  26    0x111b57  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  27    0x111b59  7      OPC=andl_r32_imm32    
  nop                         #  28    0x111b60  1      OPC=nop               
  nop                         #  29    0x111b61  1      OPC=nop               
  nop                         #  30    0x111b62  1      OPC=nop               
  nop                         #  31    0x111b63  1      OPC=nop               
  addq %r15, %r11             #  32    0x111b64  3      OPC=addq_r64_r64      
  jmpq %r11                   #  33    0x111b67  3      OPC=jmpq_r64          
  nop                         #  34    0x111b6a  1      OPC=nop               
  nop                         #  35    0x111b6b  1      OPC=nop               
  nop                         #  36    0x111b6c  1      OPC=nop               
.L_111b60:                    #        0x111b6d  0      OPC=<label>           
  nop                         #  37    0x111b6d  1      OPC=nop               
  nop                         #  38    0x111b6e  1      OPC=nop               
  nop                         #  39    0x111b6f  1      OPC=nop               
  nop                         #  40    0x111b70  1      OPC=nop               
  nop                         #  41    0x111b71  1      OPC=nop               
  nop                         #  42    0x111b72  1      OPC=nop               
  nop                         #  43    0x111b73  1      OPC=nop               
  nop                         #  44    0x111b74  1      OPC=nop               
  nop                         #  45    0x111b75  1      OPC=nop               
  nop                         #  46    0x111b76  1      OPC=nop               
  nop                         #  47    0x111b77  1      OPC=nop               
  nop                         #  48    0x111b78  1      OPC=nop               
  nop                         #  49    0x111b79  1      OPC=nop               
  nop                         #  50    0x111b7a  1      OPC=nop               
  nop                         #  51    0x111b7b  1      OPC=nop               
  nop                         #  52    0x111b7c  1      OPC=nop               
  nop                         #  53    0x111b7d  1      OPC=nop               
  nop                         #  54    0x111b7e  1      OPC=nop               
  nop                         #  55    0x111b7f  1      OPC=nop               
  nop                         #  56    0x111b80  1      OPC=nop               
  nop                         #  57    0x111b81  1      OPC=nop               
  nop                         #  58    0x111b82  1      OPC=nop               
  nop                         #  59    0x111b83  1      OPC=nop               
  nop                         #  60    0x111b84  1      OPC=nop               
  nop                         #  61    0x111b85  1      OPC=nop               
  nop                         #  62    0x111b86  1      OPC=nop               
  nop                         #  63    0x111b87  1      OPC=nop               
  callq .__errno              #  64    0x111b88  5      OPC=callq_label       
  movl %eax, %eax             #  65    0x111b8d  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  66    0x111b8f  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  67    0x111b91  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  68    0x111b95  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  69    0x111b98  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  70    0x111b9b  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  71    0x111ba1  1      OPC=popq_r64_1        
  popq %r11                   #  72    0x111ba2  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  73    0x111ba4  7      OPC=andl_r32_imm32    
  nop                         #  74    0x111bab  1      OPC=nop               
  nop                         #  75    0x111bac  1      OPC=nop               
  nop                         #  76    0x111bad  1      OPC=nop               
  nop                         #  77    0x111bae  1      OPC=nop               
  addq %r15, %r11             #  78    0x111baf  3      OPC=addq_r64_r64      
  jmpq %r11                   #  79    0x111bb2  3      OPC=jmpq_r64          
                                                                              
.size clock, .-clock

