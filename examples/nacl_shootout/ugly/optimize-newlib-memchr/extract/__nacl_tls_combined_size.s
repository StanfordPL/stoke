  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x159640
#! rip-offset  0x119640
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__nacl_tls_combined_size:     #        0x119640  0      OPC=<label>         
  pushq %rbx                   #  1     0x119640  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x119641  2      OPC=movl_r32_r32    
  nop                          #  3     0x119643  1      OPC=nop             
  nop                          #  4     0x119644  1      OPC=nop             
  nop                          #  5     0x119645  1      OPC=nop             
  nop                          #  6     0x119646  1      OPC=nop             
  nop                          #  7     0x119647  1      OPC=nop             
  nop                          #  8     0x119648  1      OPC=nop             
  nop                          #  9     0x119649  1      OPC=nop             
  nop                          #  10    0x11964a  1      OPC=nop             
  nop                          #  11    0x11964b  1      OPC=nop             
  nop                          #  12    0x11964c  1      OPC=nop             
  nop                          #  13    0x11964d  1      OPC=nop             
  nop                          #  14    0x11964e  1      OPC=nop             
  nop                          #  15    0x11964f  1      OPC=nop             
  nop                          #  16    0x119650  1      OPC=nop             
  nop                          #  17    0x119651  1      OPC=nop             
  nop                          #  18    0x119652  1      OPC=nop             
  nop                          #  19    0x119653  1      OPC=nop             
  nop                          #  20    0x119654  1      OPC=nop             
  nop                          #  21    0x119655  1      OPC=nop             
  nop                          #  22    0x119656  1      OPC=nop             
  nop                          #  23    0x119657  1      OPC=nop             
  nop                          #  24    0x119658  1      OPC=nop             
  nop                          #  25    0x119659  1      OPC=nop             
  nop                          #  26    0x11965a  1      OPC=nop             
  callq .get_tls_info          #  27    0x11965b  5      OPC=callq_label     
  movl %eax, %eax              #  28    0x119660  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  29    0x119662  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx  #  30    0x119664  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  31    0x119669  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %ecx  #  32    0x11966b  5      OPC=movl_r32_m32    
  movl %eax, %eax              #  33    0x119670  2      OPC=movl_r32_r32    
  addl 0x4(%r15,%rax,1), %edx  #  34    0x119672  5      OPC=addl_r32_m32    
  leal -0x1(%rcx), %esi        #  35    0x119677  3      OPC=leal_r32_m16    
  movl %edx, %edi              #  36    0x11967a  2      OPC=movl_r32_r32    
  leal (%rsi,%rdx,1), %edx     #  37    0x11967c  3      OPC=leal_r32_m16    
  nop                          #  38    0x11967f  1      OPC=nop             
  negl %edi                    #  39    0x119680  2      OPC=negl_r32        
  testl %edi, %edi             #  40    0x119682  2      OPC=testl_r32_r32   
  leal (%rdx,%rbx,1), %eax     #  41    0x119684  3      OPC=leal_r32_m16    
  jle .L_1196a0                #  42    0x119687  2      OPC=jle_label       
  leal (%rdi,%rsi,1), %edx     #  43    0x119689  3      OPC=leal_r32_m16    
  negl %ecx                    #  44    0x11968c  2      OPC=negl_r32        
  andl %ecx, %edx              #  45    0x11968e  2      OPC=andl_r32_r32    
  addl %edx, %eax              #  46    0x119690  2      OPC=addl_r32_r32    
  nop                          #  47    0x119692  1      OPC=nop             
  nop                          #  48    0x119693  1      OPC=nop             
  nop                          #  49    0x119694  1      OPC=nop             
  nop                          #  50    0x119695  1      OPC=nop             
  nop                          #  51    0x119696  1      OPC=nop             
  nop                          #  52    0x119697  1      OPC=nop             
  nop                          #  53    0x119698  1      OPC=nop             
  nop                          #  54    0x119699  1      OPC=nop             
  nop                          #  55    0x11969a  1      OPC=nop             
  nop                          #  56    0x11969b  1      OPC=nop             
  nop                          #  57    0x11969c  1      OPC=nop             
  nop                          #  58    0x11969d  1      OPC=nop             
  nop                          #  59    0x11969e  1      OPC=nop             
  nop                          #  60    0x11969f  1      OPC=nop             
.L_1196a0:                     #        0x1196a0  0      OPC=<label>         
  popq %rbx                    #  61    0x1196a0  1      OPC=popq_r64_1      
  popq %r11                    #  62    0x1196a1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x1196a3  7      OPC=andl_r32_imm32  
  nop                          #  64    0x1196aa  1      OPC=nop             
  nop                          #  65    0x1196ab  1      OPC=nop             
  nop                          #  66    0x1196ac  1      OPC=nop             
  nop                          #  67    0x1196ad  1      OPC=nop             
  addq %r15, %r11              #  68    0x1196ae  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x1196b1  3      OPC=jmpq_r64        
  nop                          #  70    0x1196b4  1      OPC=nop             
  nop                          #  71    0x1196b5  1      OPC=nop             
  nop                          #  72    0x1196b6  1      OPC=nop             
  nop                          #  73    0x1196b7  1      OPC=nop             
  nop                          #  74    0x1196b8  1      OPC=nop             
  nop                          #  75    0x1196b9  1      OPC=nop             
  nop                          #  76    0x1196ba  1      OPC=nop             
  nop                          #  77    0x1196bb  1      OPC=nop             
  nop                          #  78    0x1196bc  1      OPC=nop             
  nop                          #  79    0x1196bd  1      OPC=nop             
  nop                          #  80    0x1196be  1      OPC=nop             
  nop                          #  81    0x1196bf  1      OPC=nop             
  nop                          #  82    0x1196c0  1      OPC=nop             
  nop                          #  83    0x1196c1  1      OPC=nop             
  nop                          #  84    0x1196c2  1      OPC=nop             
  nop                          #  85    0x1196c3  1      OPC=nop             
  nop                          #  86    0x1196c4  1      OPC=nop             
  nop                          #  87    0x1196c5  1      OPC=nop             
  nop                          #  88    0x1196c6  1      OPC=nop             
                                                                             
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

