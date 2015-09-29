  .text
  .globl sulp
  .type sulp, @function

#! file-offset 0x169ee0
#! rip-offset  0x129ee0
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.sulp:                     #        0x129ee0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)   #  1     0x129ee0  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)    #  2     0x129ee5  5      OPC=movq_m64_r64    
  subl $0x38, %esp         #  3     0x129eea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  4     0x129eed  3      OPC=addq_r64_r64    
  movq %rdi, 0x8(%rsp)     #  5     0x129ef0  5      OPC=movq_m64_r64    
  movl %esi, %r12d         #  6     0x129ef5  3      OPC=movl_r32_r32    
  movq %rdi, %rbx          #  7     0x129ef8  3      OPC=movq_r64_r64    
  nop                      #  8     0x129efb  1      OPC=nop             
  nop                      #  9     0x129efc  1      OPC=nop             
  nop                      #  10    0x129efd  1      OPC=nop             
  nop                      #  11    0x129efe  1      OPC=nop             
  nop                      #  12    0x129eff  1      OPC=nop             
  movsd 0x8(%rsp), %xmm0   #  13    0x129f00  6      OPC=movsd_xmm_m64   
  nop                      #  14    0x129f06  1      OPC=nop             
  nop                      #  15    0x129f07  1      OPC=nop             
  nop                      #  16    0x129f08  1      OPC=nop             
  nop                      #  17    0x129f09  1      OPC=nop             
  nop                      #  18    0x129f0a  1      OPC=nop             
  nop                      #  19    0x129f0b  1      OPC=nop             
  nop                      #  20    0x129f0c  1      OPC=nop             
  nop                      #  21    0x129f0d  1      OPC=nop             
  nop                      #  22    0x129f0e  1      OPC=nop             
  nop                      #  23    0x129f0f  1      OPC=nop             
  nop                      #  24    0x129f10  1      OPC=nop             
  nop                      #  25    0x129f11  1      OPC=nop             
  nop                      #  26    0x129f12  1      OPC=nop             
  nop                      #  27    0x129f13  1      OPC=nop             
  nop                      #  28    0x129f14  1      OPC=nop             
  nop                      #  29    0x129f15  1      OPC=nop             
  nop                      #  30    0x129f16  1      OPC=nop             
  nop                      #  31    0x129f17  1      OPC=nop             
  nop                      #  32    0x129f18  1      OPC=nop             
  nop                      #  33    0x129f19  1      OPC=nop             
  nop                      #  34    0x129f1a  1      OPC=nop             
  callq .__ulp             #  35    0x129f1b  5      OPC=callq_label     
  testl %r12d, %r12d       #  36    0x129f20  3      OPC=testl_r32_r32   
  je .L_129f60             #  37    0x129f23  2      OPC=je_label        
  shrq $0x20, %rbx         #  38    0x129f25  4      OPC=shrq_r64_imm8   
  movl $0x6b, %eax         #  39    0x129f29  5      OPC=movl_r32_imm32  
  andl $0x7ff00000, %ebx   #  40    0x129f2e  6      OPC=andl_r32_imm32  
  shrl $0x14, %ebx         #  41    0x129f34  3      OPC=shrl_r32_imm8   
  subl %ebx, %eax          #  42    0x129f37  2      OPC=subl_r32_r32    
  testl %eax, %eax         #  43    0x129f39  2      OPC=testl_r32_r32   
  nop                      #  44    0x129f3b  1      OPC=nop             
  nop                      #  45    0x129f3c  1      OPC=nop             
  nop                      #  46    0x129f3d  1      OPC=nop             
  nop                      #  47    0x129f3e  1      OPC=nop             
  nop                      #  48    0x129f3f  1      OPC=nop             
  jle .L_129f60            #  49    0x129f40  2      OPC=jle_label       
  shll $0x14, %eax         #  50    0x129f42  3      OPC=shll_r32_imm8   
  addl $0x3ff00000, %eax   #  51    0x129f45  5      OPC=addl_eax_imm32  
  movq %rax, %rdx          #  52    0x129f4a  3      OPC=movq_r64_r64    
  shlq $0x20, %rdx         #  53    0x129f4d  4      OPC=shlq_r64_imm8   
  movq %rdx, 0x18(%rsp)    #  54    0x129f51  5      OPC=movq_m64_r64    
  mulsd 0x18(%rsp), %xmm0  #  55    0x129f56  6      OPC=mulsd_xmm_m64   
  nop                      #  56    0x129f5c  1      OPC=nop             
  nop                      #  57    0x129f5d  1      OPC=nop             
  nop                      #  58    0x129f5e  1      OPC=nop             
  nop                      #  59    0x129f5f  1      OPC=nop             
.L_129f60:                 #        0x129f60  0      OPC=<label>         
  movq 0x28(%rsp), %rbx    #  60    0x129f60  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r12    #  61    0x129f65  5      OPC=movq_r64_m64    
  addl $0x38, %esp         #  62    0x129f6a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  63    0x129f6d  3      OPC=addq_r64_r64    
  popq %r11                #  64    0x129f70  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  65    0x129f72  7      OPC=andl_r32_imm32  
  nop                      #  66    0x129f79  1      OPC=nop             
  nop                      #  67    0x129f7a  1      OPC=nop             
  nop                      #  68    0x129f7b  1      OPC=nop             
  nop                      #  69    0x129f7c  1      OPC=nop             
  addq %r15, %r11          #  70    0x129f7d  3      OPC=addq_r64_r64    
  jmpq %r11                #  71    0x129f80  3      OPC=jmpq_r64        
  nop                      #  72    0x129f83  1      OPC=nop             
  nop                      #  73    0x129f84  1      OPC=nop             
  nop                      #  74    0x129f85  1      OPC=nop             
  nop                      #  75    0x129f86  1      OPC=nop             
                                                                         
.size sulp, .-sulp

