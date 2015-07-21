  .text
  .globl RegisterBenchmark_part_0
  .type RegisterBenchmark_part_0, @function

#! file-offset 0x17f4
#! rip-offset  0x4017f4
#! capacity    23 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.RegisterBenchmark_part_0:  #        0x4017f4  0      OPC=0     
  pushq %rax                #  1     0x4017f4  1      OPC=1861  
  movl $0x408cc8, %edi      #  2     0x4017f5  5      OPC=1154  
  xorl %eax, %eax           #  3     0x4017fa  2      OPC=3758  
  callq .ReportStatus       #  4     0x4017fc  5      OPC=260   
  movl $0x1, %edi           #  5     0x401801  5      OPC=1154  
  callq .exit_plt           #  6     0x401806  5      OPC=260   
                                                                
.size RegisterBenchmark_part_0, .-RegisterBenchmark_part_0

