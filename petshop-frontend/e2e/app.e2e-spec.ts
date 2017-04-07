import { PetshopFrontendPage } from './app.po';

describe('petshop-frontend App', () => {
  let page: PetshopFrontendPage;

  beforeEach(() => {
    page = new PetshopFrontendPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
