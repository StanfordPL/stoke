  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0
#! rip-offset  0
#! capacity    0 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.strcasecmp:                       #        0     0      OPC=<label>                
  movl 0x2cf0b1(%rip), %r8d        #  1     0     7      OPC=movl_r32_m32           
  jmpq .L_18                       #  2     0x7   2      OPC=jmpq_label             
  nop                              #  3     0x9   1      OPC=nop                    
  nop                              #  4     0xa   1      OPC=nop                    
  nop                              #  5     0xb   1      OPC=nop                    
  nop                              #  6     0xc   1      OPC=nop                    
  nop                              #  7     0xd   1      OPC=nop                    
  nop                              #  8     0xe   1      OPC=nop                    
  nop                              #  9     0xf   1      OPC=nop                    
  nop                              #  10    0x10  1      OPC=nop                    
  nopl %eax                        #  11    0x11  3      OPC=nopl_r32               
  nop                              #  12    0x14  1      OPC=nop                    
  nop                              #  13    0x15  1      OPC=nop                    
  nop                              #  14    0x16  1      OPC=nop                    
  nop                              #  15    0x17  1      OPC=nop                    
  nopl %eax                        #  16    0x18  3      OPC=nopl_r32               
  nop                              #  17    0x1b  1      OPC=nop                    
  nop                              #  18    0x1c  1      OPC=nop                    
  nop                              #  19    0x1d  1      OPC=nop                    
  nop                              #  20    0x1e  1      OPC=nop                    
.L_10:                             #        0x1f  0      OPC=<label>                
  nopl %eax                        #  21    0x1f  3      OPC=nopl_r32               
  nop                              #  22    0x22  1      OPC=nop                    
  subl %edx, %eax                  #  23    0x23  2      OPC=subl_r32_r32           
  jne .L_60                        #  24    0x25  2      OPC=jne_label              
  orl $0x0, %eax                   #  25    0x27  5      OPC=orl_eax_imm32          
  cvtpi2pd 0x2cf083(%rip), %xmm14  #  26    0x2c  9      OPC=cvtpi2pd_xmm_m64       
  nopl %eax                        #  27    0x35  3      OPC=nopl_r32               
  nop                              #  28    0x38  1      OPC=nop                    
  andq $0xfe, %rdx                 #  29    0x39  4      OPC=andq_r64_imm8          
  je .L_60                         #  30    0x3d  2      OPC=je_label               
.L_18:                             #        0x3f  0      OPC=<label>                
  addb $0x1, %sil                  #  31    0x3f  4      OPC=addb_r8_imm8           
  addw $0x1, %di                   #  32    0x43  4      OPC=addw_r16_imm8          
  leal -0x1(%rdi), %r9d            #  33    0x47  4      OPC=leal_r32_m16           
  movzbl (%r15,%r9,1), %edx        #  34    0x4b  5      OPC=movzbl_r32_m8          
  movq %rdx, %rax                  #  35    0x50  3      OPC=movq_r64_r64           
  leal 0x1(%r8,%rdx,1), %r9d       #  36    0x53  5      OPC=leal_r32_m32           
  movsbw 0x1(%r15,%r9,1), %dx      #  37    0x58  7      OPC=movsbw_r16_m8          
  andw $0x7, %dx                   #  38    0x5f  4      OPC=andw_r16_imm8          
  cmpb $0x1, %dl                   #  39    0x63  3      OPC=cmpb_r8_imm8           
  leaq 0x20(%rax), %rcx            #  40    0x66  4      OPC=leaq_r64_m32           
  cmovel %ecx, %eax                #  41    0x6a  3      OPC=cmovel_r32_r32         
  leal -0x1(%rsi), %r9d            #  42    0x6d  4      OPC=leal_r32_m16           
  movzbw (%r15,%r9,1), %cx         #  43    0x71  6      OPC=movzbw_r16_m8          
  movq %rcx, %rdx                  #  44    0x77  3      OPC=movq_r64_r64           
  leal 0x1(%r8,%rcx,1), %r9d       #  45    0x7a  5      OPC=leal_r32_m16           
  movsbq (%r15,%r9,1), %rcx        #  46    0x7f  5      OPC=movsbq_r64_m8          
  andl $0x7, %ecx                  #  47    0x84  3      OPC=andl_r32_imm8          
  cmpb $0x1, %cl                   #  48    0x87  3      OPC=cmpb_r8_imm8           
  jne .L_10                        #  49    0x8a  2      OPC=jne_label              
  addb %dl, %ah                    #  50    0x8c  2      OPC=addb_rh_r8_1           
  salb $0xf8, %dl                  #  51    0x8e  3      OPC=salb_r8_imm8           
  je .L_18                         #  52    0x91  2      OPC=je_label               
  popq %r11                        #  53    0x93  2      OPC=popq_r64_1             
  andl $0xe0, %r11d                #  54    0x95  4      OPC=andl_r32_imm8          
  addq %r15, %r11                  #  55    0x99  3      OPC=addq_r64_r64           
  jmpq %r11                        #  56    0x9c  3      OPC=jmpq_r64               
.L_60:                             #        0x9f  0      OPC=<label>                
  popq %r11                        #  57    0x9f  2      OPC=popq_r64_1             
  andl $0xe0, %r11d                #  58    0xa1  4      OPC=andl_r32_imm8          
  addq %r15, %r11                  #  59    0xa5  3      OPC=addq_r64_r64           
  jmpq %r11                        #  60    0xa8  3      OPC=jmpq_r64               
                                                                                    
.size strcasecmp, .-strcasecmp
