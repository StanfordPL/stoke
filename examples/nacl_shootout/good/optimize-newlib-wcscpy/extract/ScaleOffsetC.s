  .text
  .globl ScaleOffsetC
  .type ScaleOffsetC, @function

#! file-offset 0x688c0
#! rip-offset  0x288c0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.ScaleOffsetC:                   #        0x288c0  0      OPC=<label>         
  pushq %r14                     #  1     0x288c0  2      OPC=pushq_r64_1     
  pushq %r13                     #  2     0x288c2  2      OPC=pushq_r64_1     
  pushq %r12                     #  3     0x288c4  2      OPC=pushq_r64_1     
  pushq %rbx                     #  4     0x288c6  1      OPC=pushq_r64_1     
  subl $0x18, %esp               #  5     0x288c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x288ca  3      OPC=addq_r64_r64    
  movl %edi, %r14d               #  7     0x288cd  3      OPC=movl_r32_r32    
  movl %esi, %r13d               #  8     0x288d0  3      OPC=movl_r32_r32    
  movl %edx, %r12d               #  9     0x288d3  3      OPC=movl_r32_r32    
  movl %ecx, %ebx                #  10    0x288d6  2      OPC=movl_r32_r32    
  movl %r8d, %esi                #  11    0x288d8  3      OPC=movl_r32_r32    
  movl $0x4, %edi                #  12    0x288db  5      OPC=movl_r32_imm32  
  nop                            #  13    0x288e0  1      OPC=nop             
  nop                            #  14    0x288e1  1      OPC=nop             
  nop                            #  15    0x288e2  1      OPC=nop             
  nop                            #  16    0x288e3  1      OPC=nop             
  nop                            #  17    0x288e4  1      OPC=nop             
  nop                            #  18    0x288e5  1      OPC=nop             
  nop                            #  19    0x288e6  1      OPC=nop             
  nop                            #  20    0x288e7  1      OPC=nop             
  nop                            #  21    0x288e8  1      OPC=nop             
  nop                            #  22    0x288e9  1      OPC=nop             
  nop                            #  23    0x288ea  1      OPC=nop             
  nop                            #  24    0x288eb  1      OPC=nop             
  nop                            #  25    0x288ec  1      OPC=nop             
  nop                            #  26    0x288ed  1      OPC=nop             
  nop                            #  27    0x288ee  1      OPC=nop             
  nop                            #  28    0x288ef  1      OPC=nop             
  nop                            #  29    0x288f0  1      OPC=nop             
  nop                            #  30    0x288f1  1      OPC=nop             
  nop                            #  31    0x288f2  1      OPC=nop             
  nop                            #  32    0x288f3  1      OPC=nop             
  nop                            #  33    0x288f4  1      OPC=nop             
  nop                            #  34    0x288f5  1      OPC=nop             
  nop                            #  35    0x288f6  1      OPC=nop             
  nop                            #  36    0x288f7  1      OPC=nop             
  nop                            #  37    0x288f8  1      OPC=nop             
  nop                            #  38    0x288f9  1      OPC=nop             
  nop                            #  39    0x288fa  1      OPC=nop             
  callq .Constraint_Create       #  40    0x288fb  5      OPC=callq_label     
  movl %eax, %eax                #  41    0x28900  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  42    0x28902  2      OPC=movl_r32_r32    
  movl $0x268e0, (%r15,%rax,1)   #  43    0x28904  8      OPC=movl_m32_imm32  
  movl %eax, %eax                #  44    0x2890c  2      OPC=movl_r32_r32    
  movl %r14d, 0x18(%r15,%rax,1)  #  45    0x2890e  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  46    0x28913  2      OPC=movl_r32_r32    
  movl %r13d, 0x1c(%r15,%rax,1)  #  47    0x28915  5      OPC=movl_m32_r32    
  nop                            #  48    0x2891a  1      OPC=nop             
  nop                            #  49    0x2891b  1      OPC=nop             
  nop                            #  50    0x2891c  1      OPC=nop             
  nop                            #  51    0x2891d  1      OPC=nop             
  nop                            #  52    0x2891e  1      OPC=nop             
  nop                            #  53    0x2891f  1      OPC=nop             
  movl %eax, %eax                #  54    0x28920  2      OPC=movl_r32_r32    
  movl %r12d, 0x20(%r15,%rax,1)  #  55    0x28922  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  56    0x28927  2      OPC=movl_r32_r32    
  movl %ebx, 0x24(%r15,%rax,1)   #  57    0x28929  5      OPC=movl_m32_r32    
  movl %eax, %eax                #  58    0x2892e  2      OPC=movl_r32_r32    
  movb $0x2, 0xd(%r15,%rax,1)    #  59    0x28930  6      OPC=movb_m8_imm8    
  movl %eax, %eax                #  60    0x28936  2      OPC=movl_r32_r32    
  movb $0x3, 0xf(%r15,%rax,1)    #  61    0x28938  6      OPC=movb_m8_imm8    
  xchgw %ax, %ax                 #  62    0x2893e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                #  63    0x28940  2      OPC=movl_r32_r32    
  movb $0x0, 0x10(%r15,%rax,1)   #  64    0x28942  6      OPC=movb_m8_imm8    
  movl %eax, %edi                #  65    0x28948  2      OPC=movl_r32_r32    
  movq %rax, 0x8(%rsp)           #  66    0x2894a  5      OPC=movq_m64_r64    
  nop                            #  67    0x2894f  1      OPC=nop             
  nop                            #  68    0x28950  1      OPC=nop             
  nop                            #  69    0x28951  1      OPC=nop             
  nop                            #  70    0x28952  1      OPC=nop             
  nop                            #  71    0x28953  1      OPC=nop             
  nop                            #  72    0x28954  1      OPC=nop             
  nop                            #  73    0x28955  1      OPC=nop             
  nop                            #  74    0x28956  1      OPC=nop             
  nop                            #  75    0x28957  1      OPC=nop             
  nop                            #  76    0x28958  1      OPC=nop             
  nop                            #  77    0x28959  1      OPC=nop             
  nop                            #  78    0x2895a  1      OPC=nop             
  callq .AddConstraint           #  79    0x2895b  5      OPC=callq_label     
  movq 0x8(%rsp), %rax           #  80    0x28960  5      OPC=movq_r64_m64    
  addl $0x18, %esp               #  81    0x28965  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  82    0x28968  3      OPC=addq_r64_r64    
  popq %rbx                      #  83    0x2896b  1      OPC=popq_r64_1      
  popq %r12                      #  84    0x2896c  2      OPC=popq_r64_1      
  popq %r13                      #  85    0x2896e  2      OPC=popq_r64_1      
  popq %r14                      #  86    0x28970  2      OPC=popq_r64_1      
  popq %r11                      #  87    0x28972  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  88    0x28974  7      OPC=andl_r32_imm32  
  nop                            #  89    0x2897b  1      OPC=nop             
  nop                            #  90    0x2897c  1      OPC=nop             
  nop                            #  91    0x2897d  1      OPC=nop             
  nop                            #  92    0x2897e  1      OPC=nop             
  addq %r15, %r11                #  93    0x2897f  3      OPC=addq_r64_r64    
  jmpq %r11                      #  94    0x28982  3      OPC=jmpq_r64        
  xchgw %ax, %ax                 #  95    0x28985  2      OPC=xchgw_ax_r16    
                                                                              
.size ScaleOffsetC, .-ScaleOffsetC

