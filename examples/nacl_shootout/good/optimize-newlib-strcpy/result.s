  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  nop                             #  1     0x1267e0  1      OPC=nop             
  subw $0xf0, %si                 #  2     0x1267e1  4      OPC=subw_r16_imm8   
  nop                             #  3     0x1267e5  1      OPC=nop             
  nopl %eax                       #  4     0x1267e6  3      OPC=nopl_r32        
  nop                             #  5     0x1267e9  1      OPC=nop             
  nop                             #  6     0x1267ea  1      OPC=nop             
  incb %sil                       #  7     0x1267eb  3      OPC=incb_r8         
  movq $0xffffffffffffffe0, %rax  #  8     0x1267ee  10     OPC=movq_r64_imm64  
  jne .L_126860                   #  9     0x1267f8  6      OPC=jne_label_1     
  andb $0x0, %al                  #  10    0x1267fe  2      OPC=andb_al_imm8    
  jne .L_126860                   #  11    0x126800  6      OPC=jne_label_1     
  nop                             #  12    0x126806  1      OPC=nop             
  nopl %eax                       #  13    0x126807  3      OPC=nopl_r32        
  nopl %eax                       #  14    0x12680a  3      OPC=nopl_r32        
  nop                             #  15    0x12680d  1      OPC=nop             
  nop                             #  16    0x12680e  1      OPC=nop             
  subl $0x4, %esi                 #  17    0x12680f  3      OPC=subl_r32_imm8   
  nop                             #  18    0x126812  1      OPC=nop             
  nopl %eax                       #  19    0x126813  3      OPC=nopl_r32        
  movq $0xffffffff, %rdx          #  20    0x126816  7      OPC=movq_r64_imm32  
  nop                             #  21    0x12681d  1      OPC=nop             
  orb %dh, %dh                    #  22    0x12681e  2      OPC=orb_rh_rh       
.L_126820:                        #        0x126820  0      OPC=<label>         
  je .L_126820                    #  23    0x126820  6      OPC=je_label_1      
  nop                             #  24    0x126826  1      OPC=nop             
  nopl %eax                       #  25    0x126827  3      OPC=nopl_r32        
  nopl %eax                       #  26    0x12682a  3      OPC=nopl_r32        
  nop                             #  27    0x12682d  1      OPC=nop             
  nopl %eax                       #  28    0x12682e  3      OPC=nopl_r32        
  nopl %eax                       #  29    0x126831  3      OPC=nopl_r32        
  nopl %eax                       #  30    0x126834  3      OPC=nopl_r32        
  nop                             #  31    0x126837  1      OPC=nop             
  leal -0x4(,%rdx,4), %r9d        #  32    0x126838  8      OPC=leal_r32_m64    
  addl $0xffffffc0, %eax          #  33    0x126840  5      OPC=addl_eax_imm32  
  leaw -0x5(,%r9,1), %ax          #  34    0x126845  9      OPC=leaw_r16_m16    
  nopl %eax                       #  35    0x12684e  3      OPC=nopl_r32        
  nopl %eax                       #  36    0x126851  3      OPC=nopl_r32        
  nop                             #  37    0x126854  1      OPC=nop             
  nop                             #  38    0x126855  1      OPC=nop             
  nop                             #  39    0x126856  1      OPC=nop             
  nop                             #  40    0x126857  1      OPC=nop             
  nop                             #  41    0x126858  1      OPC=nop             
  nop                             #  42    0x126859  1      OPC=nop             
  nop                             #  43    0x12685a  1      OPC=nop             
  subq $0x80, %rsi                #  44    0x12685b  4      OPC=subq_r64_imm8   
  nop                             #  45    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  jne .L_126860                   #  46    0x126860  6      OPC=jne_label_1     
  subq $0x2, %rax                 #  47    0x126866  6      OPC=subq_rax_imm32  
  popq %r11                       #  48    0x12686c  2      OPC=popq_r64_1      
  andl $0xe0, %r11d               #  49    0x12686e  4      OPC=andl_r32_imm8   
  addq %r15, %r11                 #  50    0x126872  3      OPC=addq_r64_r64    
  jmpq %r11                       #  51    0x126875  3      OPC=jmpq_r64        
                                                                                
.size strcpy, .-strcpy
