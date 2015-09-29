  .text
  .globl mbstowcs
  .type mbstowcs, @function

#! file-offset 0x18a840
#! rip-offset  0x14a840
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbstowcs:                  #        0x14a840  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)    #  1     0x14a840  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)    #  2     0x14a845  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  3     0x14a84a  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)    #  4     0x14a84c  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)     #  5     0x14a851  5      OPC=movq_m64_r64    
  subl $0x38, %esp          #  6     0x14a856  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x14a859  3      OPC=addq_r64_r64    
  movl %edx, %r13d          #  8     0x14a85c  3      OPC=movl_r32_r32    
  nop                       #  9     0x14a85f  1      OPC=nop             
  movl %esi, %r12d          #  10    0x14a860  3      OPC=movl_r32_r32    
  movl $0x0, (%rsp)         #  11    0x14a863  7      OPC=movl_m32_imm32  
  xchgw %ax, %ax            #  12    0x14a86a  2      OPC=xchgw_ax_r16    
  nop                       #  13    0x14a86c  1      OPC=nop             
  nop                       #  14    0x14a86d  1      OPC=nop             
  nop                       #  15    0x14a86e  1      OPC=nop             
  nop                       #  16    0x14a86f  1      OPC=nop             
  nop                       #  17    0x14a870  1      OPC=nop             
  nop                       #  18    0x14a871  1      OPC=nop             
  nop                       #  19    0x14a872  1      OPC=nop             
  nop                       #  20    0x14a873  1      OPC=nop             
  nop                       #  21    0x14a874  1      OPC=nop             
  nop                       #  22    0x14a875  1      OPC=nop             
  nop                       #  23    0x14a876  1      OPC=nop             
  nop                       #  24    0x14a877  1      OPC=nop             
  nop                       #  25    0x14a878  1      OPC=nop             
  nop                       #  26    0x14a879  1      OPC=nop             
  nop                       #  27    0x14a87a  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x14a87b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  29    0x14a880  7      OPC=leaq_r64_m16    
  movl %esp, %r8d           #  30    0x14a887  3      OPC=movl_r32_r32    
  movl %r13d, %ecx          #  31    0x14a88a  3      OPC=movl_r32_r32    
  movl %r12d, %edx          #  32    0x14a88d  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  33    0x14a890  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  34    0x14a892  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  35    0x14a894  4      OPC=movl_r32_m32    
  nop                       #  36    0x14a898  1      OPC=nop             
  nop                       #  37    0x14a899  1      OPC=nop             
  nop                       #  38    0x14a89a  1      OPC=nop             
  callq ._mbstowcs_r        #  39    0x14a89b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  40    0x14a8a0  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  41    0x14a8a5  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13     #  42    0x14a8aa  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14     #  43    0x14a8af  5      OPC=movq_r64_m64    
  addl $0x38, %esp          #  44    0x14a8b4  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  45    0x14a8b7  3      OPC=addq_r64_r64    
  popq %r11                 #  46    0x14a8ba  2      OPC=popq_r64_1      
  nop                       #  47    0x14a8bc  1      OPC=nop             
  nop                       #  48    0x14a8bd  1      OPC=nop             
  nop                       #  49    0x14a8be  1      OPC=nop             
  nop                       #  50    0x14a8bf  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  51    0x14a8c0  7      OPC=andl_r32_imm32  
  nop                       #  52    0x14a8c7  1      OPC=nop             
  nop                       #  53    0x14a8c8  1      OPC=nop             
  nop                       #  54    0x14a8c9  1      OPC=nop             
  nop                       #  55    0x14a8ca  1      OPC=nop             
  addq %r15, %r11           #  56    0x14a8cb  3      OPC=addq_r64_r64    
  jmpq %r11                 #  57    0x14a8ce  3      OPC=jmpq_r64        
  nop                       #  58    0x14a8d1  1      OPC=nop             
  nop                       #  59    0x14a8d2  1      OPC=nop             
  nop                       #  60    0x14a8d3  1      OPC=nop             
  nop                       #  61    0x14a8d4  1      OPC=nop             
  nop                       #  62    0x14a8d5  1      OPC=nop             
  nop                       #  63    0x14a8d6  1      OPC=nop             
  nop                       #  64    0x14a8d7  1      OPC=nop             
  nop                       #  65    0x14a8d8  1      OPC=nop             
  nop                       #  66    0x14a8d9  1      OPC=nop             
  nop                       #  67    0x14a8da  1      OPC=nop             
  nop                       #  68    0x14a8db  1      OPC=nop             
  nop                       #  69    0x14a8dc  1      OPC=nop             
  nop                       #  70    0x14a8dd  1      OPC=nop             
  nop                       #  71    0x14a8de  1      OPC=nop             
  nop                       #  72    0x14a8df  1      OPC=nop             
  nop                       #  73    0x14a8e0  1      OPC=nop             
  nop                       #  74    0x14a8e1  1      OPC=nop             
  nop                       #  75    0x14a8e2  1      OPC=nop             
  nop                       #  76    0x14a8e3  1      OPC=nop             
  nop                       #  77    0x14a8e4  1      OPC=nop             
  nop                       #  78    0x14a8e5  1      OPC=nop             
  nop                       #  79    0x14a8e6  1      OPC=nop             
                                                                          
.size mbstowcs, .-mbstowcs

