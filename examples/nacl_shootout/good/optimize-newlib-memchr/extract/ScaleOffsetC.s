  .text
  .globl ScaleOffsetC
  .type ScaleOffsetC, @function

#! file-offset 0x68e40
#! rip-offset  0x28e40
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.ScaleOffsetC:                   #        0x28e40  0      OPC=<label>         
  pushq %r14                     #  1     0x28e40  2      OPC=pushq_r64_1     
  pushq %r13                     #  2     0x28e42  2      OPC=pushq_r64_1     
  pushq %r12                     #  3     0x28e44  2      OPC=pushq_r64_1     
  pushq %rbx                     #  4     0x28e46  1      OPC=pushq_r64_1     
  subl $0x18, %esp               #  5     0x28e47  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x28e4a  3      OPC=addq_r64_r64    
  movl %edi, %r14d               #  7     0x28e4d  3      OPC=movl_r32_r32    
  movl %esi, %r13d               #  8     0x28e50  3      OPC=movl_r32_r32    
  movl %edx, %r12d               #  9     0x28e53  3      OPC=movl_r32_r32    
  movl %ecx, %ebx                #  10    0x28e56  2      OPC=movl_r32_r32    
  movl %r8d, %esi                #  11    0x28e58  3      OPC=movl_r32_r32    
  movl $0x4, %edi                #  12    0x28e5b  5      OPC=movl_r32_imm32  
  nop                            #  13    0x28e60  1      OPC=nop             
  nop                            #  14    0x28e61  1      OPC=nop             
  nop                            #  15    0x28e62  1      OPC=nop             
  nop                            #  16    0x28e63  1      OPC=nop             
  nop                            #  17    0x28e64  1      OPC=nop             
  nop                            #  18    0x28e65  1      OPC=nop             
  nop                            #  19    0x28e66  1      OPC=nop             
  nop                            #  20    0x28e67  1      OPC=nop             
  nop                            #  21    0x28e68  1      OPC=nop             
  nop                            #  22    0x28e69  1      OPC=nop             
  nop                            #  23    0x28e6a  1      OPC=nop             
  nop                            #  24    0x28e6b  1      OPC=nop             
  nop                            #  25    0x28e6c  1      OPC=nop             
  nop                            #  26    0x28e6d  1      OPC=nop             
  nop                            #  27    0x28e6e  1      OPC=nop             
  nop                            #  28    0x28e6f  1      OPC=nop             
  nop                            #  29    0x28e70  1      OPC=nop             
  nop                            #  30    0x28e71  1      OPC=nop             
  nop                            #  31    0x28e72  1      OPC=nop             
  nop                            #  32    0x28e73  1      OPC=nop             
  nop                            #  33    0x28e74  1      OPC=nop             
  nop                            #  34    0x28e75  1      OPC=nop             
  nop                            #  35    0x28e76  1      OPC=nop             
  nop                            #  36    0x28e77  1      OPC=nop             
  nop                            #  37    0x28e78  1      OPC=nop             
  nop                            #  38    0x28e79  1      OPC=nop             
  nop                            #  39    0x28e7a  1      OPC=nop             
  callq .Constraint_Create       #  40    0x28e7b  5      OPC=callq_label     
  movl %eax, %eax                #  41    0x28e80  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  42    0x28e82  2      OPC=movl_r32_r32    
  movl $0x26e60, (%r15,%rax,1)   #  43    0x28e84  8      OPC=movl_m32_imm32  
  movl %eax, %eax                #  44    0x28e8c  2      OPC=movl_r32_r32    
  movl %r14d, 0x18(%r15,%rax,1)  #  45    0x28e8e  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  46    0x28e93  2      OPC=movl_r32_r32    
  movl %r13d, 0x1c(%r15,%rax,1)  #  47    0x28e95  5      OPC=movl_m32_r32    
  nop                            #  48    0x28e9a  1      OPC=nop             
  nop                            #  49    0x28e9b  1      OPC=nop             
  nop                            #  50    0x28e9c  1      OPC=nop             
  nop                            #  51    0x28e9d  1      OPC=nop             
  nop                            #  52    0x28e9e  1      OPC=nop             
  nop                            #  53    0x28e9f  1      OPC=nop             
  movl %eax, %eax                #  54    0x28ea0  2      OPC=movl_r32_r32    
  movl %r12d, 0x20(%r15,%rax,1)  #  55    0x28ea2  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  56    0x28ea7  2      OPC=movl_r32_r32    
  movl %ebx, 0x24(%r15,%rax,1)   #  57    0x28ea9  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  58    0x28eae  2      OPC=movl_r32_r32    
  movb $0x2, 0xd(%r15,%rax,1)    #  59    0x28eb0  6      OPC=movb_m8_imm8    
  movl %eax, %eax                #  60    0x28eb6  2      OPC=movl_r32_r32    
  movb $0x3, 0xf(%r15,%rax,1)    #  61    0x28eb8  6      OPC=movb_m8_imm8    
  xchgw %ax, %ax                 #  62    0x28ebe  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                #  63    0x28ec0  2      OPC=movl_r32_r32    
  movb $0x0, 0x10(%r15,%rax,1)   #  64    0x28ec2  6      OPC=movb_m8_imm8    
  movl %eax, %edi                #  65    0x28ec8  2      OPC=movl_r32_r32    
  movq %rax, 0x8(%rsp)           #  66    0x28eca  5      OPC=movq_m64_r64    
  nop                            #  67    0x28ecf  1      OPC=nop             
  nop                            #  68    0x28ed0  1      OPC=nop             
  nop                            #  69    0x28ed1  1      OPC=nop             
  nop                            #  70    0x28ed2  1      OPC=nop             
  nop                            #  71    0x28ed3  1      OPC=nop             
  nop                            #  72    0x28ed4  1      OPC=nop             
  nop                            #  73    0x28ed5  1      OPC=nop             
  nop                            #  74    0x28ed6  1      OPC=nop             
  nop                            #  75    0x28ed7  1      OPC=nop             
  nop                            #  76    0x28ed8  1      OPC=nop             
  nop                            #  77    0x28ed9  1      OPC=nop             
  nop                            #  78    0x28eda  1      OPC=nop             
  callq .AddConstraint           #  79    0x28edb  5      OPC=callq_label     
  movq 0x8(%rsp), %rax           #  80    0x28ee0  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  81    0x28ee5  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  82    0x28ee8  3      OPC=addq_r64_r64    
  popq %rbx                      #  83    0x28eeb  1      OPC=popq_r64_1      
  popq %r12                      #  84    0x28eec  2      OPC=popq_r64_1      
  popq %r13                      #  85    0x28eee  2      OPC=popq_r64_1      
  popq %r14                      #  86    0x28ef0  2      OPC=popq_r64_1      
  popq %r11                      #  87    0x28ef2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  88    0x28ef4  7      OPC=andl_r32_imm32  
  nop                            #  89    0x28efb  1      OPC=nop             
  nop                            #  90    0x28efc  1      OPC=nop             
  nop                            #  91    0x28efd  1      OPC=nop             
  nop                            #  92    0x28efe  1      OPC=nop             
  addq %r15, %r11                #  93    0x28eff  3      OPC=addq_r64_r64    
  jmpq %r11                      #  94    0x28f02  3      OPC=jmpq_r64        
  xchgw %ax, %ax                 #  95    0x28f05  2      OPC=xchgw_ax_r16    
                                                                              
.size ScaleOffsetC, .-ScaleOffsetC

