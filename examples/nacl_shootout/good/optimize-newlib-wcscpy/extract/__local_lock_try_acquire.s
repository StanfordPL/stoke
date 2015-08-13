  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x6e100
#! rip-offset  0x2e100
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_try_acquire:     #        0x2e100  0      OPC=<label>         
  movl 0x1004b10e(%rip), %edx  #  1     0x2e100  6      OPC=movl_r32_m32    
  xorl %eax, %eax              #  2     0x2e106  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  3     0x2e108  2      OPC=movl_r32_r32    
  testl %edx, %edx             #  4     0x2e10a  2      OPC=testl_r32_r32   
  je .L_2e120                  #  5     0x2e10c  2      OPC=je_label        
  testq %rdi, %rdi             #  6     0x2e10e  3      OPC=testq_r64_r64   
  movb $0x16, %al              #  7     0x2e111  2      OPC=movb_r8_imm8    
  je .L_2e120                  #  8     0x2e113  2      OPC=je_label        
  jmpq .pthread_mutex_trylock  #  9     0x2e115  5      OPC=jmpq_label_1    
  nop                          #  10    0x2e11a  1      OPC=nop             
  nop                          #  11    0x2e11b  1      OPC=nop             
  nop                          #  12    0x2e11c  1      OPC=nop             
  nop                          #  13    0x2e11d  1      OPC=nop             
  nop                          #  14    0x2e11e  1      OPC=nop             
  nop                          #  15    0x2e11f  1      OPC=nop             
.L_2e120:                      #        0x2e120  0      OPC=<label>         
  popq %r11                    #  16    0x2e120  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  17    0x2e122  7      OPC=andl_r32_imm32  
  nop                          #  18    0x2e129  1      OPC=nop             
  nop                          #  19    0x2e12a  1      OPC=nop             
  nop                          #  20    0x2e12b  1      OPC=nop             
  nop                          #  21    0x2e12c  1      OPC=nop             
  addq %r15, %r11              #  22    0x2e12d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  23    0x2e130  3      OPC=jmpq_r64        
  nop                          #  24    0x2e133  1      OPC=nop             
  nop                          #  25    0x2e134  1      OPC=nop             
  nop                          #  26    0x2e135  1      OPC=nop             
  nop                          #  27    0x2e136  1      OPC=nop             
  nop                          #  28    0x2e137  1      OPC=nop             
  nop                          #  29    0x2e138  1      OPC=nop             
  nop                          #  30    0x2e139  1      OPC=nop             
  nop                          #  31    0x2e13a  1      OPC=nop             
  nop                          #  32    0x2e13b  1      OPC=nop             
  nop                          #  33    0x2e13c  1      OPC=nop             
  nop                          #  34    0x2e13d  1      OPC=nop             
  nop                          #  35    0x2e13e  1      OPC=nop             
  nop                          #  36    0x2e13f  1      OPC=nop             
  nop                          #  37    0x2e140  1      OPC=nop             
  nop                          #  38    0x2e141  1      OPC=nop             
  nop                          #  39    0x2e142  1      OPC=nop             
  nop                          #  40    0x2e143  1      OPC=nop             
  nop                          #  41    0x2e144  1      OPC=nop             
  nop                          #  42    0x2e145  1      OPC=nop             
  nop                          #  43    0x2e146  1      OPC=nop             
                                                                            
.size __local_lock_try_acquire, .-__local_lock_try_acquire

