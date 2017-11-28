using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace EMMSService
{
    public class LoginService
    {
        HttpClient client;
        string url = "http://192.168.178.167/WebApi1/api/Login";
        public LoginService()
        {
            client = new HttpClient();
            client.BaseAddress = new Uri(url);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }

        public async Task<bool> IsUserValidated(LoginViewModel user)
        {
            bool result = false;
            if (user != null)
            {
                HttpResponseMessage responseMessage = await client.PostAsJsonAsync(url, user);
                if (responseMessage.IsSuccessStatusCode)
                {
                    var responseData = responseMessage.Content.ReadAsStringAsync().Result;
                    result = JsonConvert.DeserializeObject<bool>(responseData);
                }


                if (result)
                    return true;
                else
                    return false;
            }
            return false;

        }
}
