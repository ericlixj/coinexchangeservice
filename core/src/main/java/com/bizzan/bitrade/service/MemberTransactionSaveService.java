package com.bizzan.bitrade.service;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.bizzan.bitrade.constant.PageModel;
import com.bizzan.bitrade.constant.TransactionType;
import com.bizzan.bitrade.dao.MemberTransactionDao;
import com.bizzan.bitrade.entity.MemberTransaction;
import com.bizzan.bitrade.entity.MemberWallet;
import com.bizzan.bitrade.entity.QMember;
import com.bizzan.bitrade.entity.QMemberTransaction;
import com.bizzan.bitrade.pagination.Criteria;
import com.bizzan.bitrade.pagination.PageResult;
import com.bizzan.bitrade.pagination.Restrictions;
import com.bizzan.bitrade.service.Base.BaseService;
import com.bizzan.bitrade.util.DateUtil;
import com.bizzan.bitrade.vo.MemberTransactionVO;
import com.querydsl.core.types.OrderSpecifier;
import com.querydsl.core.types.Predicate;
import com.querydsl.core.types.Projections;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.impl.JPAQuery;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberTransactionSaveService extends BaseService {
    @Autowired
    private MemberTransactionDao transactionDao;


    /**
     * 保存交易记录
     *
     * @param transaction
     * @return
     */
    public MemberTransaction save(MemberTransaction transaction) {
        return transactionDao.saveAndFlush(transaction);
    }

}
