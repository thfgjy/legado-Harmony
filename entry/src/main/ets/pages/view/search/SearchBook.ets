
import { SearchHead } from '../../../componets/search/SearchHead'
import { SearchHistory } from './SearchHistory'
import { SearchDetails } from './SearchDetails'
import { SearchRefresh } from './SearchRefresh'

@Entry
@Component
struct SearchBook {
  @Provide SearchValue: string ="1"
  @Provide  SearchStatus: number=0;



  build() {
    Column() {
      //顶部搜索框
      SearchHead();
      if(this.SearchStatus==0){
        SearchHistory();
      }else if(this.SearchStatus==1){
        SearchRefresh()
      }else {
        SearchDetails({SearchValue:this.SearchValue});
      }
    }
  }
}
