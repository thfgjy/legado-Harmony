/**
 * @author 2008
 * @datetime 2024/7/19 22:35
 * @className: CircleIcon
 */
import { IconTitleVo } from '../../componetsmodel/IconTitleVo'
import { buttonList } from '../dataList/buttonList'

@Component
export default struct CircleIcon{
  @Prop item: IconTitleVo
  build() {
    Column({
      space:8
    }){
      Column(){
        Image(this.item.icon)
          .width(24)
          .height(24)
          .margin(12)
          .fillColor($r('app.string.color_black_65'))
      }.borderRadius(50)
      .border({width:0.5,color:'rgba(0, 0, 0, 0.15)'})
      Text(this.item.title)
        .fontColor($r('app.string.color_black_65'))
        .fontSize(12)
        .fontWeight(400)
        .lineHeight(20)
    }
    .alignItems(HorizontalAlign.Center)
  }
}