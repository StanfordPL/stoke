  .text
  .globl AddC
  .type AddC, @function

#! file-offset 0x68f00
#! rip-offset  0x28f00
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.AddC:                           #        0x28f00  0      OPC=<label>         
  pushq %r14                     #  1     0x28f00  2      OPC=pushq_r64_1     
  pushq %r13                     #  2     0x28f02  2      OPC=pushq_r64_1     
  pushq %r12                     #  3     0x28f04  2      OPC=pushq_r64_1     
  pushq %rbx                     #  4     0x28f06  1      OPC=pushq_r64_1     
  subl $0x8, %esp                #  5     0x28f07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x28f0a  3      OPC=addq_r64_r64    
  movl %edi, %r13d               #  7     0x28f0d  3      OPC=movl_r32_r32    
  movl %esi, %r12d               #  8     0x28f10  3      OPC=movl_r32_r32    
  movl %edx, %ebx                #  9     0x28f13  2      OPC=movl_r32_r32    
  movl %ecx, %esi                #  10    0x28f15  2      OPC=movl_r32_r32    
  movl $0x3, %edi                #  11    0x28f17  5      OPC=movl_r32_imm32  
  nop                            #  12    0x28f1c  1      OPC=nop             
  nop                            #  13    0x28f1d  1      OPC=nop             
  nop                            #  14    0x28f1e  1      OPC=nop             
  nop                            #  15    0x28f1f  1      OPC=nop             
  nop                            #  16    0x28f20  1      OPC=nop             
  nop                            #  17    0x28f21  1      OPC=nop             
  nop                            #  18    0x28f22  1      OPC=nop             
  nop                            #  19    0x28f23  1      OPC=nop             
  nop                            #  20    0x28f24  1      OPC=nop             
  nop                            #  21    0x28f25  1      OPC=nop             
  nop                            #  22    0x28f26  1      OPC=nop             
  nop                            #  23    0x28f27  1      OPC=nop             
  nop                            #  24    0x28f28  1      OPC=nop             
  nop                            #  25    0x28f29  1      OPC=nop             
  nop                            #  26    0x28f2a  1      OPC=nop             
  nop                            #  27    0x28f2b  1      OPC=nop             
  nop                            #  28    0x28f2c  1      OPC=nop             
  nop                            #  29    0x28f2d  1      OPC=nop             
  nop                            #  30    0x28f2e  1      OPC=nop             
  nop                            #  31    0x28f2f  1      OPC=nop             
  nop                            #  32    0x28f30  1      OPC=nop             
  nop                            #  33    0x28f31  1      OPC=nop             
  nop                            #  34    0x28f32  1      OPC=nop             
  nop                            #  35    0x28f33  1      OPC=nop             
  nop                            #  36    0x28f34  1      OPC=nop             
  nop                            #  37    0x28f35  1      OPC=nop             
  nop                            #  38    0x28f36  1      OPC=nop             
  nop                            #  39    0x28f37  1      OPC=nop             
  nop                            #  40    0x28f38  1      OPC=nop             
  nop                            #  41    0x28f39  1      OPC=nop             
  nop                            #  42    0x28f3a  1      OPC=nop             
  callq .Constraint_Create       #  43    0x28f3b  5      OPC=callq_label     
  movl %eax, %r14d               #  44    0x28f40  3      OPC=movl_r32_r32    
  movl %r14d, %r14d              #  45    0x28f43  3      OPC=movl_r32_r32    
  movl $0x26d60, (%r15,%r14,1)   #  46    0x28f46  8      OPC=movl_m32_imm32  
  movl %r14d, %r14d              #  47    0x28f4e  3      OPC=movl_r32_r32    
  movl %r13d, 0x18(%r15,%r14,1)  #  48    0x28f51  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  49    0x28f56  3      OPC=movl_r32_r32    
  movl %r12d, 0x1c(%r15,%r14,1)  #  50    0x28f59  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  51    0x28f5e  2      OPC=xchgw_ax_r16    
  movl %r14d, %r14d              #  52    0x28f60  3      OPC=movl_r32_r32    
  movl %ebx, 0x20(%r15,%r14,1)   #  53    0x28f63  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  54    0x28f68  3      OPC=movl_r32_r32    
  movb $0x3, 0xd(%r15,%r14,1)    #  55    0x28f6b  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  56    0x28f71  3      OPC=movl_r32_r32    
  movb $0x2, 0xf(%r15,%r14,1)    #  57    0x28f74  6      OPC=movb_m8_imm8    
  nop                            #  58    0x28f7a  1      OPC=nop             
  nop                            #  59    0x28f7b  1      OPC=nop             
  nop                            #  60    0x28f7c  1      OPC=nop             
  nop                            #  61    0x28f7d  1      OPC=nop             
  nop                            #  62    0x28f7e  1      OPC=nop             
  nop                            #  63    0x28f7f  1      OPC=nop             
  movl %r14d, %r14d              #  64    0x28f80  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r14,1)   #  65    0x28f83  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  66    0x28f89  3      OPC=movl_r32_r32    
  movb $0x0, 0x11(%r15,%r14,1)   #  67    0x28f8c  6      OPC=movb_m8_imm8    
  movl %r14d, %edi               #  68    0x28f92  3      OPC=movl_r32_r32    
  nop                            #  69    0x28f95  1      OPC=nop             
  nop                            #  70    0x28f96  1      OPC=nop             
  nop                            #  71    0x28f97  1      OPC=nop             
  nop                            #  72    0x28f98  1      OPC=nop             
  nop                            #  73    0x28f99  1      OPC=nop             
  nop                            #  74    0x28f9a  1      OPC=nop             
  callq .AddConstraint           #  75    0x28f9b  5      OPC=callq_label     
  movl %r14d, %eax               #  76    0x28fa0  3      OPC=movl_r32_r32    
  addl $0x8, %esp                #  77    0x28fa3  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  78    0x28fa6  3      OPC=addq_r64_r64    
  popq %rbx                      #  79    0x28fa9  1      OPC=popq_r64_1      
  popq %r12                      #  80    0x28faa  2      OPC=popq_r64_1      
  popq %r13                      #  81    0x28fac  2      OPC=popq_r64_1      
  popq %r14                      #  82    0x28fae  2      OPC=popq_r64_1      
  popq %r11                      #  83    0x28fb0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  84    0x28fb2  7      OPC=andl_r32_imm32  
  nop                            #  85    0x28fb9  1      OPC=nop             
  nop                            #  86    0x28fba  1      OPC=nop             
  nop                            #  87    0x28fbb  1      OPC=nop             
  nop                            #  88    0x28fbc  1      OPC=nop             
  addq %r15, %r11                #  89    0x28fbd  3      OPC=addq_r64_r64    
  jmpq %r11                      #  90    0x28fc0  3      OPC=jmpq_r64        
  nop                            #  91    0x28fc3  1      OPC=nop             
  nop                            #  92    0x28fc4  1      OPC=nop             
  nop                            #  93    0x28fc5  1      OPC=nop             
  nop                            #  94    0x28fc6  1      OPC=nop             
                                                                              
.size AddC, .-AddC

