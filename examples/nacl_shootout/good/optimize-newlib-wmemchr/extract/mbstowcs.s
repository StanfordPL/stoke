  .text
  .globl mbstowcs
  .type mbstowcs, @function

#! file-offset 0x18a120
#! rip-offset  0x14a120
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbstowcs:                  #        0x14a120  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)    #  1     0x14a120  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)    #  2     0x14a125  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  3     0x14a12a  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)    #  4     0x14a12c  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)     #  5     0x14a131  5      OPC=movq_m64_r64    
  subl $0x38, %esp          #  6     0x14a136  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x14a139  3      OPC=addq_r64_r64    
  movl %edx, %r13d          #  8     0x14a13c  3      OPC=movl_r32_r32    
  nop                       #  9     0x14a13f  1      OPC=nop             
  movl %esi, %r12d          #  10    0x14a140  3      OPC=movl_r32_r32    
  movl $0x0, (%rsp)         #  11    0x14a143  7      OPC=movl_m32_imm32  
  xchgw %ax, %ax            #  12    0x14a14a  2      OPC=xchgw_ax_r16    
  nop                       #  13    0x14a14c  1      OPC=nop             
  nop                       #  14    0x14a14d  1      OPC=nop             
  nop                       #  15    0x14a14e  1      OPC=nop             
  nop                       #  16    0x14a14f  1      OPC=nop             
  nop                       #  17    0x14a150  1      OPC=nop             
  nop                       #  18    0x14a151  1      OPC=nop             
  nop                       #  19    0x14a152  1      OPC=nop             
  nop                       #  20    0x14a153  1      OPC=nop             
  nop                       #  21    0x14a154  1      OPC=nop             
  nop                       #  22    0x14a155  1      OPC=nop             
  nop                       #  23    0x14a156  1      OPC=nop             
  nop                       #  24    0x14a157  1      OPC=nop             
  nop                       #  25    0x14a158  1      OPC=nop             
  nop                       #  26    0x14a159  1      OPC=nop             
  nop                       #  27    0x14a15a  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x14a15b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  29    0x14a160  7      OPC=leaq_r64_m16    
  movl %esp, %r8d           #  30    0x14a167  3      OPC=movl_r32_r32    
  movl %r13d, %ecx          #  31    0x14a16a  3      OPC=movl_r32_r32    
  movl %r12d, %edx          #  32    0x14a16d  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  33    0x14a170  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  34    0x14a172  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  35    0x14a174  4      OPC=movl_r32_m32    
  nop                       #  36    0x14a178  1      OPC=nop             
  nop                       #  37    0x14a179  1      OPC=nop             
  nop                       #  38    0x14a17a  1      OPC=nop             
  callq ._mbstowcs_r        #  39    0x14a17b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  40    0x14a180  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  41    0x14a185  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13     #  42    0x14a18a  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14     #  43    0x14a18f  5      OPC=movq_r64_m64    
  addl $0x38, %esp          #  44    0x14a194  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  45    0x14a197  3      OPC=addq_r64_r64    
  popq %r11                 #  46    0x14a19a  2      OPC=popq_r64_1      
  nop                       #  47    0x14a19c  1      OPC=nop             
  nop                       #  48    0x14a19d  1      OPC=nop             
  nop                       #  49    0x14a19e  1      OPC=nop             
  nop                       #  50    0x14a19f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  51    0x14a1a0  7      OPC=andl_r32_imm32  
  nop                       #  52    0x14a1a7  1      OPC=nop             
  nop                       #  53    0x14a1a8  1      OPC=nop             
  nop                       #  54    0x14a1a9  1      OPC=nop             
  nop                       #  55    0x14a1aa  1      OPC=nop             
  addq %r15, %r11           #  56    0x14a1ab  3      OPC=addq_r64_r64    
  jmpq %r11                 #  57    0x14a1ae  3      OPC=jmpq_r64        
  nop                       #  58    0x14a1b1  1      OPC=nop             
  nop                       #  59    0x14a1b2  1      OPC=nop             
  nop                       #  60    0x14a1b3  1      OPC=nop             
  nop                       #  61    0x14a1b4  1      OPC=nop             
  nop                       #  62    0x14a1b5  1      OPC=nop             
  nop                       #  63    0x14a1b6  1      OPC=nop             
  nop                       #  64    0x14a1b7  1      OPC=nop             
  nop                       #  65    0x14a1b8  1      OPC=nop             
  nop                       #  66    0x14a1b9  1      OPC=nop             
  nop                       #  67    0x14a1ba  1      OPC=nop             
  nop                       #  68    0x14a1bb  1      OPC=nop             
  nop                       #  69    0x14a1bc  1      OPC=nop             
  nop                       #  70    0x14a1bd  1      OPC=nop             
  nop                       #  71    0x14a1be  1      OPC=nop             
  nop                       #  72    0x14a1bf  1      OPC=nop             
  nop                       #  73    0x14a1c0  1      OPC=nop             
  nop                       #  74    0x14a1c1  1      OPC=nop             
  nop                       #  75    0x14a1c2  1      OPC=nop             
  nop                       #  76    0x14a1c3  1      OPC=nop             
  nop                       #  77    0x14a1c4  1      OPC=nop             
  nop                       #  78    0x14a1c5  1      OPC=nop             
  nop                       #  79    0x14a1c6  1      OPC=nop             
                                                                          
.size mbstowcs, .-mbstowcs

