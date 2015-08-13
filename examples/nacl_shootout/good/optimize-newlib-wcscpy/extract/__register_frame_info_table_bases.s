  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x14e9e0
#! rip-offset  0x10e9e0
#! capacity    128 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_info_table_bases:  #        0x10e9e0  0      OPC=<label>         
  movl %esi, %esi                    #  1     0x10e9e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  2     0x10e9e2  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x10e9e4  9      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  4     0x10e9ed  2      OPC=movl_r32_r32    
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x10e9ef  6      OPC=movb_m8_imm8    
  popq %r11                          #  6     0x10e9f5  2      OPC=popq_r64_1      
  nop                                #  7     0x10e9f7  1      OPC=nop             
  nop                                #  8     0x10e9f8  1      OPC=nop             
  nop                                #  9     0x10e9f9  1      OPC=nop             
  nop                                #  10    0x10e9fa  1      OPC=nop             
  nop                                #  11    0x10e9fb  1      OPC=nop             
  nop                                #  12    0x10e9fc  1      OPC=nop             
  nop                                #  13    0x10e9fd  1      OPC=nop             
  nop                                #  14    0x10e9fe  1      OPC=nop             
  nop                                #  15    0x10e9ff  1      OPC=nop             
  movl %esi, %esi                    #  16    0x10ea00  2      OPC=movl_r32_r32    
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  17    0x10ea02  8      OPC=orw_m16_imm16   
  movl %esi, %esi                    #  18    0x10ea0a  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)        #  19    0x10ea0c  5      OPC=movl_m32_r32    
  movl 0xff6a101(%rip), %eax         #  20    0x10ea11  6      OPC=movl_r32_m32    
  nop                                #  21    0x10ea17  1      OPC=nop             
  nop                                #  22    0x10ea18  1      OPC=nop             
  nop                                #  23    0x10ea19  1      OPC=nop             
  nop                                #  24    0x10ea1a  1      OPC=nop             
  nop                                #  25    0x10ea1b  1      OPC=nop             
  nop                                #  26    0x10ea1c  1      OPC=nop             
  nop                                #  27    0x10ea1d  1      OPC=nop             
  nop                                #  28    0x10ea1e  1      OPC=nop             
  nop                                #  29    0x10ea1f  1      OPC=nop             
  movl %esi, %esi                    #  30    0x10ea20  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)    #  31    0x10ea22  8      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  32    0x10ea2a  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)        #  33    0x10ea2c  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  34    0x10ea31  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)        #  35    0x10ea33  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  36    0x10ea38  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)       #  37    0x10ea3a  5      OPC=movl_m32_r32    
  nop                                #  38    0x10ea3f  1      OPC=nop             
  movl %esi, 0xff6a0d2(%rip)         #  39    0x10ea40  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d            #  40    0x10ea46  7      OPC=andl_r32_imm32  
  nop                                #  41    0x10ea4d  1      OPC=nop             
  nop                                #  42    0x10ea4e  1      OPC=nop             
  nop                                #  43    0x10ea4f  1      OPC=nop             
  nop                                #  44    0x10ea50  1      OPC=nop             
  addq %r15, %r11                    #  45    0x10ea51  3      OPC=addq_r64_r64    
  jmpq %r11                          #  46    0x10ea54  3      OPC=jmpq_r64        
  nop                                #  47    0x10ea57  1      OPC=nop             
  nop                                #  48    0x10ea58  1      OPC=nop             
  nop                                #  49    0x10ea59  1      OPC=nop             
  nop                                #  50    0x10ea5a  1      OPC=nop             
  nop                                #  51    0x10ea5b  1      OPC=nop             
  nop                                #  52    0x10ea5c  1      OPC=nop             
  nop                                #  53    0x10ea5d  1      OPC=nop             
  nop                                #  54    0x10ea5e  1      OPC=nop             
  nop                                #  55    0x10ea5f  1      OPC=nop             
  nop                                #  56    0x10ea60  1      OPC=nop             
  nop                                #  57    0x10ea61  1      OPC=nop             
  nop                                #  58    0x10ea62  1      OPC=nop             
  nop                                #  59    0x10ea63  1      OPC=nop             
  nop                                #  60    0x10ea64  1      OPC=nop             
  nop                                #  61    0x10ea65  1      OPC=nop             
  nop                                #  62    0x10ea66  1      OPC=nop             
                                                                                   
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

