const helpers = {
  getLovedForItemsList: () => {
    const items = ['Best Service', 'Notable Wine List', 'Special Occasion', 'Best Value', 'Best Sushi', 'Best Casual'];
    const cities = ['Downtown / South and East LA', 'Los Angeles', 'Torrance', 'East LA', 'West LA', 'South Bay'];
    const count = Math.floor(Math.random() * items.length) + 1;
    const lovedForItems = [];

    for (let i = 0; i < count; i += 1) {
      const itemIndex = Math.floor(Math.random() * items.length);
      const item = items.splice(itemIndex, 1)[0];
      const cityIndex = Math.floor(Math.random() * cities.length);
      const city = cities[cityIndex];
      lovedForItems.push({ item, city });
    }

    return lovedForItems;
  },
};

export default helpers;
