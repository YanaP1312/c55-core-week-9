// Nobel Prize API Documentation: https://www.nobelprize.org/about/developer-zone-2/

import { fetchData } from "./fetcher.js";

const API_BASE_URL = "https://api.nobelprize.org/2.1";

/**
 * Fetch Nobel Prizes with optional filters
 * @param {Object} filters - Filter options
 * @param {string} filters.year - Year to filter by (optional)
 * @param {string} filters.category - Category code to filter by (optional)
 * @param {number} filters.offset - Pagination offset (default: 0)
 * @param {number} filters.limit - Number of results per page (default: 10)
 * @param {Function} onSuccess - Callback for successful fetch
 * @param {Function} onError - Callback for fetch errors
 */
export function fetchNobelPrizes(filters = {}, onSuccess, onError) {
  const { year = "all", category = "all", offset = 0, limit = 10 } = filters;

  let url = `${API_BASE_URL}/nobelPrizes?offset=${offset}&limit=${limit}&sort=desc`;

  if (year !== "all") {
    url += `&nobelPrizeYear=${year}`;
  }

  if (category !== "all") {
    url += `&nobelPrizeCategory=${category}`;
  }

  fetchData(url, onSuccess, onError);
}
