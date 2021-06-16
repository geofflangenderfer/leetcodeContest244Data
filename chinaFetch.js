fetch("https://leetcode-cn.com/graphql/", {
  "headers": {
    "accept": "*/*",
    "accept-language": "en",
    "content-type": "application/json",
    "sec-ch-ua": "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"90\", \"Google Chrome\";v=\"90\"",
    "sec-ch-ua-mobile": "?0",
    "sec-fetch-dest": "empty",
    "sec-fetch-mode": "cors",
    "sec-fetch-site": "same-origin",
    "x-csrftoken": "xfA9Yh67x3qxSETGyRY2lnQ95Dnoe1YDcP3U6i3EdfG9WU5wyadbvQVPYqSAT8yv",
    "x-definition-name": "userProfilePublicProfile",
    "x-operation-name": "userPublicProfile",
    "x-timezone": "America/Cancun",
    "cookie": "csrftoken=xfA9Yh67x3qxSETGyRY2lnQ95Dnoe1YDcP3U6i3EdfG9WU5wyadbvQVPYqSAT8yv; __auc=854efddd1797bf0abe8e972f933; gr_user_id=a2c2f5cc-6251-4dd2-ba14-8aac50c8a7d1; _ga=GA1.2.757508293.1621282046; _gid=GA1.2.242860899.1623428151; __appToken__=; __asc=74f44d2d179fca05896d13f8c0d; a2873925c34ecbd2_gr_session_id=675b5fa1-a501-4b38-9ae0-5e46891fd5dc; a2873925c34ecbd2_gr_session_id_675b5fa1-a501-4b38-9ae0-5e46891fd5dc=true; Hm_lvt_fa218a3ff7179639febdb15e372f411c=1623442106,1623443549,1623443595,1623443758; Hm_lpvt_fa218a3ff7179639febdb15e372f411c=1623443758; _gat_gtag_UA_131851415_1=1"
  },
  "referrer": "https://leetcode-cn.com/u/Heltion/",
  "referrerPolicy": "strict-origin-when-cross-origin",
  "body": "{\"operationName\":\"userPublicProfile\",\"variables\":{\"userSlug\":\"Heltion\"},\"query\":\"query userPublicProfile($userSlug: String!) {\\n  userProfilePublicProfile(userSlug: $userSlug) {\\n    username\\n    haveFollowed\\n    siteRanking\\n    profile {\\n      userSlug\\n      realName\\n      aboutMe\\n      userAvatar\\n      location\\n      gender\\n      websites\\n      skillTags\\n      contestCount\\n      asciiCode\\n      medals {\\n        name\\n        year\\n        month\\n        category\\n        __typename\\n      }\\n      ranking {\\n        rating\\n        ranking\\n        currentLocalRanking\\n        currentGlobalRanking\\n        currentRating\\n        ratingProgress\\n        totalLocalUsers\\n        totalGlobalUsers\\n        __typename\\n      }\\n      skillSet {\\n        langLevels {\\n          langName\\n          langVerboseName\\n          level\\n          __typename\\n        }\\n        topics {\\n          slug\\n          name\\n          translatedName\\n          __typename\\n        }\\n        topicAreaScores {\\n          score\\n          topicArea {\\n            name\\n            slug\\n            __typename\\n          }\\n          __typename\\n        }\\n        __typename\\n      }\\n      socialAccounts {\\n        provider\\n        profileUrl\\n        __typename\\n      }\\n      __typename\\n    }\\n    educationRecordList {\\n      unverifiedOrganizationName\\n      __typename\\n    }\\n    occupationRecordList {\\n      unverifiedOrganizationName\\n      jobTitle\\n      __typename\\n    }\\n    submissionProgress {\\n      totalSubmissions\\n      waSubmissions\\n      acSubmissions\\n      reSubmissions\\n      otherSubmissions\\n      acTotal\\n      questionTotal\\n      __typename\\n    }\\n    __typename\\n  }\\n}\\n\"}",
  "method": "POST",
  "mode": "cors"
});
