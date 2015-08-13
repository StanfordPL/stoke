  .text
  .globl __gmpn_preinv_mu_div_qr_itch
  .type __gmpn_preinv_mu_div_qr_itch, @function

#! file-offset 0x764a0
#! rip-offset  0x364a0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__gmpn_preinv_mu_div_qr_itch:         #        0x364a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)               #  1     0x364a0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                      #  2     0x364a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                #  3     0x364a7  5      OPC=movq_m64_r64    
  leal 0x1(%rbx), %edi                 #  4     0x364ac  3      OPC=leal_r32_m16    
  subl $0x18, %esp                     #  5     0x364af  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                      #  6     0x364b2  3      OPC=addq_r64_r64    
  movl %edx, %r12d                     #  7     0x364b5  3      OPC=movl_r32_r32    
  nop                                  #  8     0x364b8  1      OPC=nop             
  nop                                  #  9     0x364b9  1      OPC=nop             
  nop                                  #  10    0x364ba  1      OPC=nop             
  callq .__gmpn_mulmod_bnm1_next_size  #  11    0x364bb  5      OPC=callq_label     
  movl %eax, %edx                      #  12    0x364c0  2      OPC=movl_r32_r32    
  sarl $0x1, %edx                      #  13    0x364c2  2      OPC=sarl_r32_one    
  cmpl %edx, %ebx                      #  14    0x364c4  2      OPC=cmpl_r32_r32    
  jle .L_36500                         #  15    0x364c6  2      OPC=jle_label       
  cmpl %edx, %r12d                     #  16    0x364c8  3      OPC=cmpl_r32_r32    
  cmovgl %eax, %edx                    #  17    0x364cb  3      OPC=cmovgl_r32_r32  
  nop                                  #  18    0x364ce  1      OPC=nop             
  nop                                  #  19    0x364cf  1      OPC=nop             
  nop                                  #  20    0x364d0  1      OPC=nop             
  nop                                  #  21    0x364d1  1      OPC=nop             
  nop                                  #  22    0x364d2  1      OPC=nop             
  nop                                  #  23    0x364d3  1      OPC=nop             
  nop                                  #  24    0x364d4  1      OPC=nop             
  nop                                  #  25    0x364d5  1      OPC=nop             
  nop                                  #  26    0x364d6  1      OPC=nop             
  nop                                  #  27    0x364d7  1      OPC=nop             
  nop                                  #  28    0x364d8  1      OPC=nop             
  nop                                  #  29    0x364d9  1      OPC=nop             
  nop                                  #  30    0x364da  1      OPC=nop             
  nop                                  #  31    0x364db  1      OPC=nop             
  nop                                  #  32    0x364dc  1      OPC=nop             
  nop                                  #  33    0x364dd  1      OPC=nop             
  nop                                  #  34    0x364de  1      OPC=nop             
  nop                                  #  35    0x364df  1      OPC=nop             
.L_364e0:                              #        0x364e0  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                 #  36    0x364e0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                #  37    0x364e5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                     #  38    0x364ea  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                      #  39    0x364ed  3      OPC=addq_r64_r64    
  popq %r11                            #  40    0x364f0  2      OPC=popq_r64_1      
  leal 0x4(%rdx,%rax,2), %eax          #  41    0x364f2  4      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d              #  42    0x364f6  7      OPC=andl_r32_imm32  
  nop                                  #  43    0x364fd  1      OPC=nop             
  nop                                  #  44    0x364fe  1      OPC=nop             
  nop                                  #  45    0x364ff  1      OPC=nop             
  nop                                  #  46    0x36500  1      OPC=nop             
  addq %r15, %r11                      #  47    0x36501  3      OPC=addq_r64_r64    
  jmpq %r11                            #  48    0x36504  3      OPC=jmpq_r64        
.L_36500:                              #        0x36507  0      OPC=<label>         
  xorl %edx, %edx                      #  49    0x36507  2      OPC=xorl_r32_r32    
  jmpq .L_364e0                        #  50    0x36509  2      OPC=jmpq_label      
  nop                                  #  51    0x3650b  1      OPC=nop             
  nop                                  #  52    0x3650c  1      OPC=nop             
  nop                                  #  53    0x3650d  1      OPC=nop             
  nop                                  #  54    0x3650e  1      OPC=nop             
  nop                                  #  55    0x3650f  1      OPC=nop             
  nop                                  #  56    0x36510  1      OPC=nop             
  nop                                  #  57    0x36511  1      OPC=nop             
  nop                                  #  58    0x36512  1      OPC=nop             
  nop                                  #  59    0x36513  1      OPC=nop             
  nop                                  #  60    0x36514  1      OPC=nop             
  nop                                  #  61    0x36515  1      OPC=nop             
  nop                                  #  62    0x36516  1      OPC=nop             
  nop                                  #  63    0x36517  1      OPC=nop             
  nop                                  #  64    0x36518  1      OPC=nop             
  nop                                  #  65    0x36519  1      OPC=nop             
  nop                                  #  66    0x3651a  1      OPC=nop             
  nop                                  #  67    0x3651b  1      OPC=nop             
  nop                                  #  68    0x3651c  1      OPC=nop             
  nop                                  #  69    0x3651d  1      OPC=nop             
  nop                                  #  70    0x3651e  1      OPC=nop             
  nop                                  #  71    0x3651f  1      OPC=nop             
  nop                                  #  72    0x36520  1      OPC=nop             
  nop                                  #  73    0x36521  1      OPC=nop             
  nop                                  #  74    0x36522  1      OPC=nop             
  nop                                  #  75    0x36523  1      OPC=nop             
  nop                                  #  76    0x36524  1      OPC=nop             
  nop                                  #  77    0x36525  1      OPC=nop             
  nop                                  #  78    0x36526  1      OPC=nop             
                                                                                    
.size __gmpn_preinv_mu_div_qr_itch, .-__gmpn_preinv_mu_div_qr_itch

