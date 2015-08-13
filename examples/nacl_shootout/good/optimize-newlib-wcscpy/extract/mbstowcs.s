  .text
  .globl mbstowcs
  .type mbstowcs, @function

#! file-offset 0x189d80
#! rip-offset  0x149d80
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.mbstowcs:                  #        0x149d80  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)    #  1     0x149d80  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)    #  2     0x149d85  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  3     0x149d8a  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)    #  4     0x149d8c  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)     #  5     0x149d91  5      OPC=movq_m64_r64    
  subl $0x38, %esp          #  6     0x149d96  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x149d99  3      OPC=addq_r64_r64    
  movl %edx, %r13d          #  8     0x149d9c  3      OPC=movl_r32_r32    
  nop                       #  9     0x149d9f  1      OPC=nop             
  movl %esi, %r12d          #  10    0x149da0  3      OPC=movl_r32_r32    
  movl $0x0, (%rsp)         #  11    0x149da3  7      OPC=movl_m32_imm32  
  xchgw %ax, %ax            #  12    0x149daa  2      OPC=xchgw_ax_r16    
  nop                       #  13    0x149dac  1      OPC=nop             
  nop                       #  14    0x149dad  1      OPC=nop             
  nop                       #  15    0x149dae  1      OPC=nop             
  nop                       #  16    0x149daf  1      OPC=nop             
  nop                       #  17    0x149db0  1      OPC=nop             
  nop                       #  18    0x149db1  1      OPC=nop             
  nop                       #  19    0x149db2  1      OPC=nop             
  nop                       #  20    0x149db3  1      OPC=nop             
  nop                       #  21    0x149db4  1      OPC=nop             
  nop                       #  22    0x149db5  1      OPC=nop             
  nop                       #  23    0x149db6  1      OPC=nop             
  nop                       #  24    0x149db7  1      OPC=nop             
  nop                       #  25    0x149db8  1      OPC=nop             
  nop                       #  26    0x149db9  1      OPC=nop             
  nop                       #  27    0x149dba  1      OPC=nop             
  callq .__nacl_read_tp     #  28    0x149dbb  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  29    0x149dc0  7      OPC=leaq_r64_m16    
  movl %esp, %r8d           #  30    0x149dc7  3      OPC=movl_r32_r32    
  movl %r13d, %ecx          #  31    0x149dca  3      OPC=movl_r32_r32    
  movl %r12d, %edx          #  32    0x149dcd  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  33    0x149dd0  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  34    0x149dd2  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  35    0x149dd4  4      OPC=movl_r32_m32    
  nop                       #  36    0x149dd8  1      OPC=nop             
  nop                       #  37    0x149dd9  1      OPC=nop             
  nop                       #  38    0x149dda  1      OPC=nop             
  callq ._mbstowcs_r        #  39    0x149ddb  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  40    0x149de0  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  41    0x149de5  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13     #  42    0x149dea  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14     #  43    0x149def  5      OPC=movq_r64_m64    
  addl $0x38, %esp          #  44    0x149df4  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  45    0x149df7  3      OPC=addq_r64_r64    
  popq %r11                 #  46    0x149dfa  2      OPC=popq_r64_1      
  nop                       #  47    0x149dfc  1      OPC=nop             
  nop                       #  48    0x149dfd  1      OPC=nop             
  nop                       #  49    0x149dfe  1      OPC=nop             
  nop                       #  50    0x149dff  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  51    0x149e00  7      OPC=andl_r32_imm32  
  nop                       #  52    0x149e07  1      OPC=nop             
  nop                       #  53    0x149e08  1      OPC=nop             
  nop                       #  54    0x149e09  1      OPC=nop             
  nop                       #  55    0x149e0a  1      OPC=nop             
  addq %r15, %r11           #  56    0x149e0b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  57    0x149e0e  3      OPC=jmpq_r64        
  nop                       #  58    0x149e11  1      OPC=nop             
  nop                       #  59    0x149e12  1      OPC=nop             
  nop                       #  60    0x149e13  1      OPC=nop             
  nop                       #  61    0x149e14  1      OPC=nop             
  nop                       #  62    0x149e15  1      OPC=nop             
  nop                       #  63    0x149e16  1      OPC=nop             
  nop                       #  64    0x149e17  1      OPC=nop             
  nop                       #  65    0x149e18  1      OPC=nop             
  nop                       #  66    0x149e19  1      OPC=nop             
  nop                       #  67    0x149e1a  1      OPC=nop             
  nop                       #  68    0x149e1b  1      OPC=nop             
  nop                       #  69    0x149e1c  1      OPC=nop             
  nop                       #  70    0x149e1d  1      OPC=nop             
  nop                       #  71    0x149e1e  1      OPC=nop             
  nop                       #  72    0x149e1f  1      OPC=nop             
  nop                       #  73    0x149e20  1      OPC=nop             
  nop                       #  74    0x149e21  1      OPC=nop             
  nop                       #  75    0x149e22  1      OPC=nop             
  nop                       #  76    0x149e23  1      OPC=nop             
  nop                       #  77    0x149e24  1      OPC=nop             
  nop                       #  78    0x149e25  1      OPC=nop             
  nop                       #  79    0x149e26  1      OPC=nop             
                                                                          
.size mbstowcs, .-mbstowcs

