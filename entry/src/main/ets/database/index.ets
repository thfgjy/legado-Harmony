import BookGroupsDao from './dao/BookGroupsDao'
import BooksDao from './dao/BooksDao'
import BookSourceDao from './dao/BookSourceDao'
import rssSourcesHistoryDao from './dao/RssSourcesHistoryDao'
import SubscriptionDao from './dao/SubscriptionDao'
import worksListsDao from './dao/WorksListsDao'

class DataBase {
  async initAllTable() {
    await BookSourceDao.initBookSourceTable()
    await rssSourcesHistoryDao.initRssSourcesHistoryTable()
    await SubscriptionDao.initSubscriptionTable()
    await BooksDao.initBooksTable()
    await BookGroupsDao.initGroupTable()
    await worksListsDao.initWorksListsTable()
  }
}

const dataBase = new DataBase()

export default dataBase as DataBase