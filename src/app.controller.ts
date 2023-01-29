import { Controller, Get, Param } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('zak')
  zak(){
    return this.appService.zak();
  }

  @Get('zak/:id')
  test(
    @Param('id') id : string
  ){
      return "hak swal7ek : w haka" + id ;
  }
}
