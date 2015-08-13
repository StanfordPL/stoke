  .text
  .globl AddC
  .type AddC, @function

#! file-offset 0x68980
#! rip-offset  0x28980
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.AddC:                           #        0x28980  0      OPC=<label>         
  pushq %r14                     #  1     0x28980  2      OPC=pushq_r64_1     
  pushq %r13                     #  2     0x28982  2      OPC=pushq_r64_1     
  pushq %r12                     #  3     0x28984  2      OPC=pushq_r64_1     
  pushq %rbx                     #  4     0x28986  1      OPC=pushq_r64_1     
  subl $0x8, %esp                #  5     0x28987  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x2898a  3      OPC=addq_r64_r64    
  movl %edi, %r13d               #  7     0x2898d  3      OPC=movl_r32_r32    
  movl %esi, %r12d               #  8     0x28990  3      OPC=movl_r32_r32    
  movl %edx, %ebx                #  9     0x28993  2      OPC=movl_r32_r32    
  movl %ecx, %esi                #  10    0x28995  2      OPC=movl_r32_r32    
  movl $0x3, %edi                #  11    0x28997  5      OPC=movl_r32_imm32  
  nop                            #  12    0x2899c  1      OPC=nop             
  nop                            #  13    0x2899d  1      OPC=nop             
  nop                            #  14    0x2899e  1      OPC=nop             
  nop                            #  15    0x2899f  1      OPC=nop             
  nop                            #  16    0x289a0  1      OPC=nop             
  nop                            #  17    0x289a1  1      OPC=nop             
  nop                            #  18    0x289a2  1      OPC=nop             
  nop                            #  19    0x289a3  1      OPC=nop             
  nop                            #  20    0x289a4  1      OPC=nop             
  nop                            #  21    0x289a5  1      OPC=nop             
  nop                            #  22    0x289a6  1      OPC=nop             
  nop                            #  23    0x289a7  1      OPC=nop             
  nop                            #  24    0x289a8  1      OPC=nop             
  nop                            #  25    0x289a9  1      OPC=nop             
  nop                            #  26    0x289aa  1      OPC=nop             
  nop                            #  27    0x289ab  1      OPC=nop             
  nop                            #  28    0x289ac  1      OPC=nop             
  nop                            #  29    0x289ad  1      OPC=nop             
  nop                            #  30    0x289ae  1      OPC=nop             
  nop                            #  31    0x289af  1      OPC=nop             
  nop                            #  32    0x289b0  1      OPC=nop             
  nop                            #  33    0x289b1  1      OPC=nop             
  nop                            #  34    0x289b2  1      OPC=nop             
  nop                            #  35    0x289b3  1      OPC=nop             
  nop                            #  36    0x289b4  1      OPC=nop             
  nop                            #  37    0x289b5  1      OPC=nop             
  nop                            #  38    0x289b6  1      OPC=nop             
  nop                            #  39    0x289b7  1      OPC=nop             
  nop                            #  40    0x289b8  1      OPC=nop             
  nop                            #  41    0x289b9  1      OPC=nop             
  nop                            #  42    0x289ba  1      OPC=nop             
  callq .Constraint_Create       #  43    0x289bb  5      OPC=callq_label     
  movl %eax, %r14d               #  44    0x289c0  3      OPC=movl_r32_r32    
  movl %r14d, %r14d              #  45    0x289c3  3      OPC=movl_r32_r32    
  movl $0x267e0, (%r15,%r14,1)   #  46    0x289c6  8      OPC=movl_m32_imm32  
  movl %r14d, %r14d              #  47    0x289ce  3      OPC=movl_r32_r32    
  movl %r13d, 0x18(%r15,%r14,1)  #  48    0x289d1  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  49    0x289d6  3      OPC=movl_r32_r32    
  movl %r12d, 0x1c(%r15,%r14,1)  #  50    0x289d9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  51    0x289de  2      OPC=xchgw_ax_r16    
  movl %r14d, %r14d              #  52    0x289e0  3      OPC=movl_r32_r32    
  movl %ebx, 0x20(%r15,%r14,1)   #  53    0x289e3  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  54    0x289e8  3      OPC=movl_r32_r32    
  movb $0x3, 0xd(%r15,%r14,1)    #  55    0x289eb  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  56    0x289f1  3      OPC=movl_r32_r32    
  movb $0x2, 0xf(%r15,%r14,1)    #  57    0x289f4  6      OPC=movb_m8_imm8    
  nop                            #  58    0x289fa  1      OPC=nop             
  nop                            #  59    0x289fb  1      OPC=nop             
  nop                            #  60    0x289fc  1      OPC=nop             
  nop                            #  61    0x289fd  1      OPC=nop             
  nop                            #  62    0x289fe  1      OPC=nop             
  nop                            #  63    0x289ff  1      OPC=nop             
  movl %r14d, %r14d              #  64    0x28a00  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r14,1)   #  65    0x28a03  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  66    0x28a09  3      OPC=movl_r32_r32    
  movb $0x0, 0x11(%r15,%r14,1)   #  67    0x28a0c  6      OPC=movb_m8_imm8    
  movl %r14d, %edi               #  68    0x28a12  3      OPC=movl_r32_r32    
  nop                            #  69    0x28a15  1      OPC=nop             
  nop                            #  70    0x28a16  1      OPC=nop             
  nop                            #  71    0x28a17  1      OPC=nop             
  nop                            #  72    0x28a18  1      OPC=nop             
  nop                            #  73    0x28a19  1      OPC=nop             
  nop                            #  74    0x28a1a  1      OPC=nop             
  callq .AddConstraint           #  75    0x28a1b  5      OPC=callq_label     
  movl %r14d, %eax               #  76    0x28a20  3      OPC=movl_r32_r32    
  addl $0x8, %esp                #  77    0x28a23  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  78    0x28a26  3      OPC=addq_r64_r64    
  popq %rbx                      #  79    0x28a29  1      OPC=popq_r64_1      
  popq %r12                      #  80    0x28a2a  2      OPC=popq_r64_1      
  popq %r13                      #  81    0x28a2c  2      OPC=popq_r64_1      
  popq %r14                      #  82    0x28a2e  2      OPC=popq_r64_1      
  popq %r11                      #  83    0x28a30  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  84    0x28a32  7      OPC=andl_r32_imm32  
  nop                            #  85    0x28a39  1      OPC=nop             
  nop                            #  86    0x28a3a  1      OPC=nop             
  nop                            #  87    0x28a3b  1      OPC=nop             
  nop                            #  88    0x28a3c  1      OPC=nop             
  addq %r15, %r11                #  89    0x28a3d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  90    0x28a40  3      OPC=jmpq_r64        
  nop                            #  91    0x28a43  1      OPC=nop             
  nop                            #  92    0x28a44  1      OPC=nop             
  nop                            #  93    0x28a45  1      OPC=nop             
  nop                            #  94    0x28a46  1      OPC=nop             
                                                                              
.size AddC, .-AddC

