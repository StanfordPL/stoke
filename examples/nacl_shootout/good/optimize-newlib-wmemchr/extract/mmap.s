  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x158a20
#! rip-offset  0x118a20
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.mmap:                        #        0x118a20  0      OPC=<label>           
  pushq %rbx                  #  1     0x118a20  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x118a21  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x118a24  3      OPC=addq_r64_r64      
  movl 0xff60813(%rip), %eax  #  4     0x118a27  6      OPC=movl_r32_m32      
  movl %edi, 0xc(%rsp)        #  5     0x118a2d  4      OPC=movl_m32_r32      
  leal 0xc(%rsp), %edi        #  6     0x118a31  4      OPC=leal_r32_m16      
  nop                         #  7     0x118a35  1      OPC=nop               
  nop                         #  8     0x118a36  1      OPC=nop               
  nop                         #  9     0x118a37  1      OPC=nop               
  andl $0xffffffe0, %eax      #  10    0x118a38  6      OPC=andl_r32_imm32    
  nop                         #  11    0x118a3e  1      OPC=nop               
  nop                         #  12    0x118a3f  1      OPC=nop               
  nop                         #  13    0x118a40  1      OPC=nop               
  addq %r15, %rax             #  14    0x118a41  3      OPC=addq_r64_r64      
  callq %rax                  #  15    0x118a44  2      OPC=callq_r64         
  testl %eax, %eax            #  16    0x118a46  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  17    0x118a48  2      OPC=movl_r32_r32      
  jne .L_118a60               #  18    0x118a4a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  19    0x118a4c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  20    0x118a50  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  21    0x118a53  3      OPC=addq_r64_r64      
  popq %rbx                   #  22    0x118a56  1      OPC=popq_r64_1        
  popq %r11                   #  23    0x118a57  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  24    0x118a59  7      OPC=andl_r32_imm32    
  nop                         #  25    0x118a60  1      OPC=nop               
  nop                         #  26    0x118a61  1      OPC=nop               
  nop                         #  27    0x118a62  1      OPC=nop               
  nop                         #  28    0x118a63  1      OPC=nop               
  addq %r15, %r11             #  29    0x118a64  3      OPC=addq_r64_r64      
  jmpq %r11                   #  30    0x118a67  3      OPC=jmpq_r64          
  nop                         #  31    0x118a6a  1      OPC=nop               
  nop                         #  32    0x118a6b  1      OPC=nop               
  nop                         #  33    0x118a6c  1      OPC=nop               
.L_118a60:                    #        0x118a6d  0      OPC=<label>           
  nop                         #  34    0x118a6d  1      OPC=nop               
  nop                         #  35    0x118a6e  1      OPC=nop               
  nop                         #  36    0x118a6f  1      OPC=nop               
  nop                         #  37    0x118a70  1      OPC=nop               
  nop                         #  38    0x118a71  1      OPC=nop               
  nop                         #  39    0x118a72  1      OPC=nop               
  nop                         #  40    0x118a73  1      OPC=nop               
  nop                         #  41    0x118a74  1      OPC=nop               
  nop                         #  42    0x118a75  1      OPC=nop               
  nop                         #  43    0x118a76  1      OPC=nop               
  nop                         #  44    0x118a77  1      OPC=nop               
  nop                         #  45    0x118a78  1      OPC=nop               
  nop                         #  46    0x118a79  1      OPC=nop               
  nop                         #  47    0x118a7a  1      OPC=nop               
  nop                         #  48    0x118a7b  1      OPC=nop               
  nop                         #  49    0x118a7c  1      OPC=nop               
  nop                         #  50    0x118a7d  1      OPC=nop               
  nop                         #  51    0x118a7e  1      OPC=nop               
  nop                         #  52    0x118a7f  1      OPC=nop               
  nop                         #  53    0x118a80  1      OPC=nop               
  nop                         #  54    0x118a81  1      OPC=nop               
  nop                         #  55    0x118a82  1      OPC=nop               
  nop                         #  56    0x118a83  1      OPC=nop               
  nop                         #  57    0x118a84  1      OPC=nop               
  nop                         #  58    0x118a85  1      OPC=nop               
  nop                         #  59    0x118a86  1      OPC=nop               
  nop                         #  60    0x118a87  1      OPC=nop               
  callq .__errno              #  61    0x118a88  5      OPC=callq_label       
  movl %eax, %eax             #  62    0x118a8d  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  63    0x118a8f  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  64    0x118a91  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  65    0x118a95  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  66    0x118a98  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  67    0x118a9b  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  68    0x118aa1  1      OPC=popq_r64_1        
  popq %r11                   #  69    0x118aa2  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  70    0x118aa4  7      OPC=andl_r32_imm32    
  nop                         #  71    0x118aab  1      OPC=nop               
  nop                         #  72    0x118aac  1      OPC=nop               
  nop                         #  73    0x118aad  1      OPC=nop               
  nop                         #  74    0x118aae  1      OPC=nop               
  addq %r15, %r11             #  75    0x118aaf  3      OPC=addq_r64_r64      
  jmpq %r11                   #  76    0x118ab2  3      OPC=jmpq_r64          
                                                                              
.size mmap, .-mmap

