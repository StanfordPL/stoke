  .text
  .globl __gmpn_preinv_mu_div_qr_itch
  .type __gmpn_preinv_mu_div_qr_itch, @function

#! file-offset 0x767a0
#! rip-offset  0x367a0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__gmpn_preinv_mu_div_qr_itch:         #        0x367a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)               #  1     0x367a0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                      #  2     0x367a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                #  3     0x367a7  5      OPC=movq_m64_r64    
  leal 0x1(%rbx), %edi                 #  4     0x367ac  3      OPC=leal_r32_m16    
  subl $0x18, %esp                     #  5     0x367af  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                      #  6     0x367b2  3      OPC=addq_r64_r64    
  movl %edx, %r12d                     #  7     0x367b5  3      OPC=movl_r32_r32    
  nop                                  #  8     0x367b8  1      OPC=nop             
  nop                                  #  9     0x367b9  1      OPC=nop             
  nop                                  #  10    0x367ba  1      OPC=nop             
  callq .__gmpn_mulmod_bnm1_next_size  #  11    0x367bb  5      OPC=callq_label     
  movl %eax, %edx                      #  12    0x367c0  2      OPC=movl_r32_r32    
  sarl $0x1, %edx                      #  13    0x367c2  2      OPC=sarl_r32_one    
  cmpl %edx, %ebx                      #  14    0x367c4  2      OPC=cmpl_r32_r32    
  jle .L_36800                         #  15    0x367c6  2      OPC=jle_label       
  cmpl %edx, %r12d                     #  16    0x367c8  3      OPC=cmpl_r32_r32    
  cmovgl %eax, %edx                    #  17    0x367cb  3      OPC=cmovgl_r32_r32  
  nop                                  #  18    0x367ce  1      OPC=nop             
  nop                                  #  19    0x367cf  1      OPC=nop             
  nop                                  #  20    0x367d0  1      OPC=nop             
  nop                                  #  21    0x367d1  1      OPC=nop             
  nop                                  #  22    0x367d2  1      OPC=nop             
  nop                                  #  23    0x367d3  1      OPC=nop             
  nop                                  #  24    0x367d4  1      OPC=nop             
  nop                                  #  25    0x367d5  1      OPC=nop             
  nop                                  #  26    0x367d6  1      OPC=nop             
  nop                                  #  27    0x367d7  1      OPC=nop             
  nop                                  #  28    0x367d8  1      OPC=nop             
  nop                                  #  29    0x367d9  1      OPC=nop             
  nop                                  #  30    0x367da  1      OPC=nop             
  nop                                  #  31    0x367db  1      OPC=nop             
  nop                                  #  32    0x367dc  1      OPC=nop             
  nop                                  #  33    0x367dd  1      OPC=nop             
  nop                                  #  34    0x367de  1      OPC=nop             
  nop                                  #  35    0x367df  1      OPC=nop             
.L_367e0:                              #        0x367e0  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                 #  36    0x367e0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                #  37    0x367e5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                     #  38    0x367ea  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                      #  39    0x367ed  3      OPC=addq_r64_r64    
  popq %r11                            #  40    0x367f0  2      OPC=popq_r64_1      
  leal 0x4(%rdx,%rax,2), %eax          #  41    0x367f2  4      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d              #  42    0x367f6  7      OPC=andl_r32_imm32  
  nop                                  #  43    0x367fd  1      OPC=nop             
  nop                                  #  44    0x367fe  1      OPC=nop             
  nop                                  #  45    0x367ff  1      OPC=nop             
  nop                                  #  46    0x36800  1      OPC=nop             
  addq %r15, %r11                      #  47    0x36801  3      OPC=addq_r64_r64    
  jmpq %r11                            #  48    0x36804  3      OPC=jmpq_r64        
.L_36800:                              #        0x36807  0      OPC=<label>         
  xorl %edx, %edx                      #  49    0x36807  2      OPC=xorl_r32_r32    
  jmpq .L_367e0                        #  50    0x36809  2      OPC=jmpq_label      
  nop                                  #  51    0x3680b  1      OPC=nop             
  nop                                  #  52    0x3680c  1      OPC=nop             
  nop                                  #  53    0x3680d  1      OPC=nop             
  nop                                  #  54    0x3680e  1      OPC=nop             
  nop                                  #  55    0x3680f  1      OPC=nop             
  nop                                  #  56    0x36810  1      OPC=nop             
  nop                                  #  57    0x36811  1      OPC=nop             
  nop                                  #  58    0x36812  1      OPC=nop             
  nop                                  #  59    0x36813  1      OPC=nop             
  nop                                  #  60    0x36814  1      OPC=nop             
  nop                                  #  61    0x36815  1      OPC=nop             
  nop                                  #  62    0x36816  1      OPC=nop             
  nop                                  #  63    0x36817  1      OPC=nop             
  nop                                  #  64    0x36818  1      OPC=nop             
  nop                                  #  65    0x36819  1      OPC=nop             
  nop                                  #  66    0x3681a  1      OPC=nop             
  nop                                  #  67    0x3681b  1      OPC=nop             
  nop                                  #  68    0x3681c  1      OPC=nop             
  nop                                  #  69    0x3681d  1      OPC=nop             
  nop                                  #  70    0x3681e  1      OPC=nop             
  nop                                  #  71    0x3681f  1      OPC=nop             
  nop                                  #  72    0x36820  1      OPC=nop             
  nop                                  #  73    0x36821  1      OPC=nop             
  nop                                  #  74    0x36822  1      OPC=nop             
  nop                                  #  75    0x36823  1      OPC=nop             
  nop                                  #  76    0x36824  1      OPC=nop             
  nop                                  #  77    0x36825  1      OPC=nop             
  nop                                  #  78    0x36826  1      OPC=nop             
                                                                                    
.size __gmpn_preinv_mu_div_qr_itch, .-__gmpn_preinv_mu_div_qr_itch

