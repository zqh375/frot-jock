import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // 使 Vite 监听所有网络接口
    port: 5173  // 或你选择的端口
  }
})