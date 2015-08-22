  .text
  .globl __gmpn_preinv_mu_div_qr_itch
  .type __gmpn_preinv_mu_div_qr_itch, @function

#! file-offset 0x76ec0
#! rip-offset  0x36ec0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__gmpn_preinv_mu_div_qr_itch:         #        0x36ec0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)               #  1     0x36ec0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                      #  2     0x36ec5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                #  3     0x36ec7  5      OPC=movq_m64_r64    
  leal 0x1(%rbx), %edi                 #  4     0x36ecc  3      OPC=leal_r32_m16    
  subl $0x18, %esp                     #  5     0x36ecf  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                      #  6     0x36ed2  3      OPC=addq_r64_r64    
  movl %edx, %r12d                     #  7     0x36ed5  3      OPC=movl_r32_r32    
  nop                                  #  8     0x36ed8  1      OPC=nop             
  nop                                  #  9     0x36ed9  1      OPC=nop             
  nop                                  #  10    0x36eda  1      OPC=nop             
  callq .__gmpn_mulmod_bnm1_next_size  #  11    0x36edb  5      OPC=callq_label     
  movl %eax, %edx                      #  12    0x36ee0  2      OPC=movl_r32_r32    
  sarl $0x1, %edx                      #  13    0x36ee2  2      OPC=sarl_r32_one    
  cmpl %edx, %ebx                      #  14    0x36ee4  2      OPC=cmpl_r32_r32    
  jle .L_36f20                         #  15    0x36ee6  2      OPC=jle_label       
  cmpl %edx, %r12d                     #  16    0x36ee8  3      OPC=cmpl_r32_r32    
  cmovgl %eax, %edx                    #  17    0x36eeb  3      OPC=cmovgl_r32_r32  
  nop                                  #  18    0x36eee  1      OPC=nop             
  nop                                  #  19    0x36eef  1      OPC=nop             
  nop                                  #  20    0x36ef0  1      OPC=nop             
  nop                                  #  21    0x36ef1  1      OPC=nop             
  nop                                  #  22    0x36ef2  1      OPC=nop             
  nop                                  #  23    0x36ef3  1      OPC=nop             
  nop                                  #  24    0x36ef4  1      OPC=nop             
  nop                                  #  25    0x36ef5  1      OPC=nop             
  nop                                  #  26    0x36ef6  1      OPC=nop             
  nop                                  #  27    0x36ef7  1      OPC=nop             
  nop                                  #  28    0x36ef8  1      OPC=nop             
  nop                                  #  29    0x36ef9  1      OPC=nop             
  nop                                  #  30    0x36efa  1      OPC=nop             
  nop                                  #  31    0x36efb  1      OPC=nop             
  nop                                  #  32    0x36efc  1      OPC=nop             
  nop                                  #  33    0x36efd  1      OPC=nop             
  nop                                  #  34    0x36efe  1      OPC=nop             
  nop                                  #  35    0x36eff  1      OPC=nop             
.L_36f00:                              #        0x36f00  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                 #  36    0x36f00  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                #  37    0x36f05  5      OPC=movq_r64_m64    
  addl $0x18, %esp                     #  38    0x36f0a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                      #  39    0x36f0d  3      OPC=addq_r64_r64    
  popq %r11                            #  40    0x36f10  2      OPC=popq_r64_1      
  leal 0x4(%rdx,%rax,2), %eax          #  41    0x36f12  4      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d              #  42    0x36f16  7      OPC=andl_r32_imm32  
  nop                                  #  43    0x36f1d  1      OPC=nop             
  nop                                  #  44    0x36f1e  1      OPC=nop             
  nop                                  #  45    0x36f1f  1      OPC=nop             
  nop                                  #  46    0x36f20  1      OPC=nop             
  addq %r15, %r11                      #  47    0x36f21  3      OPC=addq_r64_r64    
  jmpq %r11                            #  48    0x36f24  3      OPC=jmpq_r64        
.L_36f20:                              #        0x36f27  0      OPC=<label>         
  xorl %edx, %edx                      #  49    0x36f27  2      OPC=xorl_r32_r32    
  jmpq .L_36f00                        #  50    0x36f29  2      OPC=jmpq_label      
  nop                                  #  51    0x36f2b  1      OPC=nop             
  nop                                  #  52    0x36f2c  1      OPC=nop             
  nop                                  #  53    0x36f2d  1      OPC=nop             
  nop                                  #  54    0x36f2e  1      OPC=nop             
  nop                                  #  55    0x36f2f  1      OPC=nop             
  nop                                  #  56    0x36f30  1      OPC=nop             
  nop                                  #  57    0x36f31  1      OPC=nop             
  nop                                  #  58    0x36f32  1      OPC=nop             
  nop                                  #  59    0x36f33  1      OPC=nop             
  nop                                  #  60    0x36f34  1      OPC=nop             
  nop                                  #  61    0x36f35  1      OPC=nop             
  nop                                  #  62    0x36f36  1      OPC=nop             
  nop                                  #  63    0x36f37  1      OPC=nop             
  nop                                  #  64    0x36f38  1      OPC=nop             
  nop                                  #  65    0x36f39  1      OPC=nop             
  nop                                  #  66    0x36f3a  1      OPC=nop             
  nop                                  #  67    0x36f3b  1      OPC=nop             
  nop                                  #  68    0x36f3c  1      OPC=nop             
  nop                                  #  69    0x36f3d  1      OPC=nop             
  nop                                  #  70    0x36f3e  1      OPC=nop             
  nop                                  #  71    0x36f3f  1      OPC=nop             
  nop                                  #  72    0x36f40  1      OPC=nop             
  nop                                  #  73    0x36f41  1      OPC=nop             
  nop                                  #  74    0x36f42  1      OPC=nop             
  nop                                  #  75    0x36f43  1      OPC=nop             
  nop                                  #  76    0x36f44  1      OPC=nop             
  nop                                  #  77    0x36f45  1      OPC=nop             
  nop                                  #  78    0x36f46  1      OPC=nop             
                                                                                    
.size __gmpn_preinv_mu_div_qr_itch, .-__gmpn_preinv_mu_div_qr_itch

