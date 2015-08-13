  .text
  .globl sulp
  .type sulp, @function

#! file-offset 0x1694c0
#! rip-offset  0x1294c0
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.sulp:                     #        0x1294c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)   #  1     0x1294c0  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)    #  2     0x1294c5  5      OPC=movq_m64_r64    
  subl $0x38, %esp         #  3     0x1294ca  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  4     0x1294cd  3      OPC=addq_r64_r64    
  movq %rdi, 0x8(%rsp)     #  5     0x1294d0  5      OPC=movq_m64_r64    
  movl %esi, %r12d         #  6     0x1294d5  3      OPC=movl_r32_r32    
  movq %rdi, %rbx          #  7     0x1294d8  3      OPC=movq_r64_r64    
  nop                      #  8     0x1294db  1      OPC=nop             
  nop                      #  9     0x1294dc  1      OPC=nop             
  nop                      #  10    0x1294dd  1      OPC=nop             
  nop                      #  11    0x1294de  1      OPC=nop             
  nop                      #  12    0x1294df  1      OPC=nop             
  movsd 0x8(%rsp), %xmm0   #  13    0x1294e0  6      OPC=movsd_xmm_m64   
  nop                      #  14    0x1294e6  1      OPC=nop             
  nop                      #  15    0x1294e7  1      OPC=nop             
  nop                      #  16    0x1294e8  1      OPC=nop             
  nop                      #  17    0x1294e9  1      OPC=nop             
  nop                      #  18    0x1294ea  1      OPC=nop             
  nop                      #  19    0x1294eb  1      OPC=nop             
  nop                      #  20    0x1294ec  1      OPC=nop             
  nop                      #  21    0x1294ed  1      OPC=nop             
  nop                      #  22    0x1294ee  1      OPC=nop             
  nop                      #  23    0x1294ef  1      OPC=nop             
  nop                      #  24    0x1294f0  1      OPC=nop             
  nop                      #  25    0x1294f1  1      OPC=nop             
  nop                      #  26    0x1294f2  1      OPC=nop             
  nop                      #  27    0x1294f3  1      OPC=nop             
  nop                      #  28    0x1294f4  1      OPC=nop             
  nop                      #  29    0x1294f5  1      OPC=nop             
  nop                      #  30    0x1294f6  1      OPC=nop             
  nop                      #  31    0x1294f7  1      OPC=nop             
  nop                      #  32    0x1294f8  1      OPC=nop             
  nop                      #  33    0x1294f9  1      OPC=nop             
  nop                      #  34    0x1294fa  1      OPC=nop             
  callq .__ulp             #  35    0x1294fb  5      OPC=callq_label     
  testl %r12d, %r12d       #  36    0x129500  3      OPC=testl_r32_r32   
  je .L_129540             #  37    0x129503  2      OPC=je_label        
  shrq $0x20, %rbx         #  38    0x129505  4      OPC=shrq_r64_imm8   
  movl $0x6b, %eax         #  39    0x129509  5      OPC=movl_r32_imm32  
  andl $0x7ff00000, %ebx   #  40    0x12950e  6      OPC=andl_r32_imm32  
  shrl $0x14, %ebx         #  41    0x129514  3      OPC=shrl_r32_imm8   
  subl %ebx, %eax          #  42    0x129517  2      OPC=subl_r32_r32    
  testl %eax, %eax         #  43    0x129519  2      OPC=testl_r32_r32   
  nop                      #  44    0x12951b  1      OPC=nop             
  nop                      #  45    0x12951c  1      OPC=nop             
  nop                      #  46    0x12951d  1      OPC=nop             
  nop                      #  47    0x12951e  1      OPC=nop             
  nop                      #  48    0x12951f  1      OPC=nop             
  jle .L_129540            #  49    0x129520  2      OPC=jle_label       
  shll $0x14, %eax         #  50    0x129522  3      OPC=shll_r32_imm8   
  addl $0x3ff00000, %eax   #  51    0x129525  5      OPC=addl_eax_imm32  
  movq %rax, %rdx          #  52    0x12952a  3      OPC=movq_r64_r64    
  shlq $0x20, %rdx         #  53    0x12952d  4      OPC=shlq_r64_imm8   
  movq %rdx, 0x18(%rsp)    #  54    0x129531  5      OPC=movq_m64_r64    
  mulsd 0x18(%rsp), %xmm0  #  55    0x129536  6      OPC=mulsd_xmm_m64   
  nop                      #  56    0x12953c  1      OPC=nop             
  nop                      #  57    0x12953d  1      OPC=nop             
  nop                      #  58    0x12953e  1      OPC=nop             
  nop                      #  59    0x12953f  1      OPC=nop             
.L_129540:                 #        0x129540  0      OPC=<label>         
  movq 0x28(%rsp), %rbx    #  60    0x129540  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r12    #  61    0x129545  5      OPC=movq_r64_m64    
  addl $0x38, %esp         #  62    0x12954a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  63    0x12954d  3      OPC=addq_r64_r64    
  popq %r11                #  64    0x129550  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  65    0x129552  7      OPC=andl_r32_imm32  
  nop                      #  66    0x129559  1      OPC=nop             
  nop                      #  67    0x12955a  1      OPC=nop             
  nop                      #  68    0x12955b  1      OPC=nop             
  nop                      #  69    0x12955c  1      OPC=nop             
  addq %r15, %r11          #  70    0x12955d  3      OPC=addq_r64_r64    
  jmpq %r11                #  71    0x129560  3      OPC=jmpq_r64        
  nop                      #  72    0x129563  1      OPC=nop             
  nop                      #  73    0x129564  1      OPC=nop             
  nop                      #  74    0x129565  1      OPC=nop             
  nop                      #  75    0x129566  1      OPC=nop             
                                                                         
.size sulp, .-sulp

