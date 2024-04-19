import axios from 'axios';

const API_KEY = 'sb-624ccb98b648bd2983d19a0b2a167791f7c12862cdd6f7fd'; // 替换成你申请的 OpenAI key
const API_URL = 'https://api.openai-sb.com/v1/';

const api = axios.create({
  baseURL: API_URL,
  headers: {
    Authorization: `Bearer ${API_KEY}`,
    'Content-Type': 'application/json',
  },
});

async function generateText(prompt) {
  try {
    const response = await api.post('chat/completions', {
      model: "gpt-3.5-turbo",
      messages: [
        {
          role: "user",
          content: prompt,
        },
      ],
      stream: false,
    });
    return response.data.choices[0].message.content.trim();
  } catch (error) {
    console.error('Error generating text:', error);
    throw error;
  }
}

export default {
  generateText,
};

