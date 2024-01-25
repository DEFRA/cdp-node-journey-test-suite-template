import { browser, expect } from '@wdio/globals'

import ExamplePage from 'page-objects/home.page'

describe('Home page', () => {
  it('Should be on the "Home" page', async () => {
    await ExamplePage.open()
    await expect(browser).toHaveTitle('Home')
  })
})
