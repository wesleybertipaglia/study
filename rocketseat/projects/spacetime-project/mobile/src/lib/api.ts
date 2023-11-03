import axios from 'axios'

export const api = axios.create({
  baseURL: 'http://{your_ip}:3333',
})
